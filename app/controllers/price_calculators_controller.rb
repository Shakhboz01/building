class PriceCalculatorsController < ApplicationController
  before_action :set_price_calculator, only: %i[ show edit update destroy ]

  # GET /price_calculators or /price_calculators.json
  def index
    @price_calculators = PriceCalculator.all
  end

  # GET /price_calculators/1 or /price_calculators/1.json
  def show
  end

  # GET /price_calculators/new
  def new
    @price_calculator = PriceCalculator.new(apartment_number_id: params[:apartment_number_id])
  end

  # GET /price_calculators/1/edit
  def edit
  end

  # POST /price_calculators or /price_calculators.json
  def create
    @price_calculator = PriceCalculator.new(price_calculator_params)

    respond_to do |format|
      if @price_calculator.save
        format.html { redirect_to @price_calculator, notice: "Price calculator was successfully created." }
        format.json { render :show, status: :created, location: @price_calculator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @price_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_calculators/1 or /price_calculators/1.json
  def update
    respond_to do |format|
      if @price_calculator.update(price_calculator_params)
        format.html { redirect_to @price_calculator, notice: "Price calculator was successfully updated." }
        format.json { render :show, status: :ok, location: @price_calculator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @price_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_calculators/1 or /price_calculators/1.json
  def destroy
    @price_calculator.destroy!

    respond_to do |format|
      format.html { redirect_to price_calculators_path, status: :see_other, notice: "Price calculator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_calculator
      @price_calculator = PriceCalculator.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def price_calculator_params
      params.expect(price_calculator: [ :apartment_number_id, :price_per_square, :first_payment_in_cash, :first_payment_in_percent, :number_of_months ])
    end
end
