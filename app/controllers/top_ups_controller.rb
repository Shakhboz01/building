class TopUpsController < ApplicationController
  before_action :set_top_up, only: %i[ show edit update destroy ]

  # GET /top_ups or /top_ups.json
  def index
    @top_ups = TopUp.all
  end

  # GET /top_ups/1 or /top_ups/1.json
  def show
    respond_to do |format|
      format.pdf { send_pdf }
    end
  end

  # GET /top_ups/new
  def new
    not_allowed_for_guest
    @top_up = TopUp.new(contract_id: params[:contract_id])
  end

  # GET /top_ups/1/edit
  def edit
  end

  # POST /top_ups or /top_ups.json
  def create
    not_allowed_for_guest
    @top_up = TopUp.new(top_up_params)
    @top_up.user_id = current_user.id

    respond_to do |format|
      if @top_up.save
        format.html { redirect_to apartment_path(@top_up.contract.apartment), notice: "Top up was successfully created." }
        format.json { render :show, status: :created, location: @top_up }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @top_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_ups/1 or /top_ups/1.json
  def update
    respond_to do |format|
      if @top_up.update(top_up_params)
        format.html { redirect_to @top_up, notice: "Top up was successfully updated." }
        format.json { render :show, status: :ok, location: @top_up }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @top_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_ups/1 or /top_ups/1.json
  def destroy
    @top_up.destroy!

    respond_to do |format|
      format.html { redirect_to top_ups_path, status: :see_other, notice: "Top up was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def send_pdf
    receipt = GenerateTopUpsReceipts.run!(
      top_ups: TopUp.where(id: @top_up.id),
      contract: @top_up.contract
    )
    send_data receipt.render,
      filename: "#{@top_up.created_at.strftime("%Y-%m-%d")}-gorails-receipt.pdf",
      type: "application/pdf",
      disposition: :inline
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_top_up
      @top_up = TopUp.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def top_up_params
      params.expect(top_up: [ :amount, :comment, :contract_id, :user_id, :top_up_type ])
    end
end
