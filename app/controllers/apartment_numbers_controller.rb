class ApartmentNumbersController < ApplicationController
  before_action :set_apartment_number, only: %i[ show edit update destroy ]

  # GET /apartment_numbers or /apartment_numbers.json
  def index
    @apartment_numbers = ApartmentNumber.all
  end

  # GET /apartment_numbers/1 or /apartment_numbers/1.json
  def show
  end

  # GET /apartment_numbers/new
  def new
    @apartment_number = ApartmentNumber.new
  end

  # GET /apartment_numbers/1/edit
  def edit
  end

  # POST /apartment_numbers or /apartment_numbers.json
  def create
    @apartment_number = ApartmentNumber.new(apartment_number_params)

    respond_to do |format|
      if @apartment_number.save
        format.html { redirect_to @apartment_number, notice: "Apartment number was successfully created." }
        format.json { render :show, status: :created, location: @apartment_number }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apartment_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_numbers/1 or /apartment_numbers/1.json
  def update
    respond_to do |format|
      if @apartment_number.update(apartment_number_params)
        format.html { redirect_to @apartment_number, notice: "Apartment number was successfully updated." }
        format.json { render :show, status: :ok, location: @apartment_number }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apartment_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_numbers/1 or /apartment_numbers/1.json
  def destroy
    @apartment_number.destroy!

    respond_to do |format|
      format.html { redirect_to apartment_numbers_path, status: :see_other, notice: "Apartment number was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_number
      @apartment_number = ApartmentNumber.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def apartment_number_params
      params.expect(apartment_number: [ :block_id, :number, :number_of_rooms, :square ])
    end
end
