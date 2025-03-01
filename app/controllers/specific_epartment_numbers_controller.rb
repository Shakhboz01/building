class SpecificEpartmentNumbersController < ApplicationController
  before_action :set_specific_epartment_number, only: %i[ show edit update destroy ]

  # GET /specific_epartment_numbers or /specific_epartment_numbers.json
  def index
    @specific_epartment_numbers = SpecificEpartmentNumber.all
  end

  # GET /specific_epartment_numbers/1 or /specific_epartment_numbers/1.json
  def show
  end

  # GET /specific_epartment_numbers/new
  def new
    @specific_epartment_number = SpecificEpartmentNumber.new
  end

  # GET /specific_epartment_numbers/1/edit
  def edit
  end

  # POST /specific_epartment_numbers or /specific_epartment_numbers.json
  def create
    @specific_epartment_number = SpecificEpartmentNumber.new(specific_epartment_number_params)

    respond_to do |format|
      if @specific_epartment_number.save
        format.html { redirect_to @specific_epartment_number, notice: "Specific epartment number was successfully created." }
        format.json { render :show, status: :created, location: @specific_epartment_number }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @specific_epartment_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_epartment_numbers/1 or /specific_epartment_numbers/1.json
  def update
    respond_to do |format|
      if @specific_epartment_number.update(specific_epartment_number_params)
        format.html { redirect_to @specific_epartment_number, notice: "Specific epartment number was successfully updated." }
        format.json { render :show, status: :ok, location: @specific_epartment_number }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @specific_epartment_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_epartment_numbers/1 or /specific_epartment_numbers/1.json
  def destroy
    @specific_epartment_number.destroy!

    respond_to do |format|
      format.html { redirect_to specific_epartment_numbers_path, status: :see_other, notice: "Specific epartment number was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_epartment_number
      @specific_epartment_number = SpecificEpartmentNumber.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def specific_epartment_number_params
      params.expect(specific_epartment_number: [ :block_id, :number, :number_of_rooms, :square ])
    end
end
