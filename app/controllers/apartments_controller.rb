class ApartmentsController < ApplicationController
  before_action :set_apartment, only: %i[ show edit update destroy ]

  # GET /apartments or /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1 or /apartments/1.json
  def show
    @contract = @apartment.contract
    @payment_schedule = @contract&.generate_payment_schedule
  end

  # GET /apartments/new
  def new
    @apartment = Apartment.new
    @blocks = Block.all.pluck(:name, :id)
    @floors = Floor.all.map { |floor| [floor.name, floor.id] }
    @apartment_numbers = ApartmentNumber.all.map { |apartment_number| [apartment_number.name, apartment_number.id] }
    if params[:block_id].present?
      block = Block.find(params[:block_id])
      @floors = block.floors.all.map { |floor| [floor.name, floor.id] }
      @apartment_numbers = block.apartment_numbers.all.map { |apartment_number| [apartment_number.name, apartment_number.id] }
    end
  end

  # GET /apartments/1/edit
  def edit
  end

  # POST /apartments or /apartments.json
  def create
    @apartment = Apartment.new(apartment_params)

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to @apartment, notice: "Apartment was successfully created." }
        format.json { render :show, status: :created, location: @apartment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/1 or /apartments/1.json
  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: "Apartment was successfully updated." }
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/1 or /apartments/1.json
  def destroy
    @apartment.destroy!

    respond_to do |format|
      format.html { redirect_to apartments_path, status: :see_other, notice: "Apartment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def apartment_params
      params.expect(apartment: [ :floor_id, :block_id, :comment, :apartment_number_id ])
    end
end
