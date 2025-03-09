class ContractsController < ApplicationController
  before_action :set_contract, only: %i[ show edit update destroy print print_top_ups ]

  # GET /contracts or /contracts.json
  def index
    @contracts = Contract.all
  end

  # GET /contracts/1 or /contracts/1.json
  def show
    @remaining_amount_to_pay = @contract.total_price - @contract.top_ups.sum(:amount)
    @payment_schedule = @contract.generate_payment_schedule
  end

  # GET /contracts/new
  def new
    not_allowed_for_guest
    @contract = Contract.new(apartment_id: params[:apartment_id])
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts or /contracts.json
  def create
    not_allowed_for_guest
    @contract = Contract.new(contract_params)
    @contract.user_id = current_user.id

    respond_to do |format|
      if @contract.save
        format.html { redirect_to apartment_url(@contract.apartment) }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1 or /contracts/1.json
  def update
    not_allowed_for_guest
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: "Contract was successfully updated." }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1 or /contracts/1.json
  def destroy
    apartment = @contract.apartment
    @contract.destroy!

    respond_to do |format|
      format.html { redirect_to apartment_url(apartment), status: :see_other, notice: "Contract was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def scheduled_day_contracts
    params[:selected_day] ||= Date.today.day
    selected_day = params[:selected_day] || Date.today.day
    selected_date = params[:selected_date]&.to_date || Date.today
    time_range = selected_date.beginning_of_day...selected_date.end_of_day
    @contracts =
      Contract.where(status: :started)
              .where(payment_day: selected_day)
  end

  def print_top_ups
    receipt = GenerateTopUpsReceipts.run!(
      top_ups: @contract.top_ups.order(:created_at),
      contract: @contract
    )
    send_data receipt.render,
      filename: "#{DateTime.current.strftime("%Y-%m-%d %H-%M-%S")}-top_ups.pdf",
      type: "application/pdf",
      disposition: :inline
  end

  def print
    @payment_schedule = @contract.generate_payment_schedule
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def contract_params
      params.expect(
        contract: [
          :payment_day, :first_payment_in_cash, :first_payment_in_percent, :number_of_months,
          :fullname, :pinfl, :passport_number, :user_id, :status, :price_per_square,
          :apartment_id, :contract_number, :phone_number, :address, :pinfl, :extra_phone_number,
          :deadline, :passport_date, :start_date
        ]
      )
    end
end
