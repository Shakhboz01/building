class RoomSquaresController < ApplicationController
  before_action :set_room_square, only: %i[ show edit update destroy ]

  # GET /room_squares or /room_squares.json
  def index
    @room_squares = RoomSquare.all
  end

  # GET /room_squares/1 or /room_squares/1.json
  def show
  end

  # GET /room_squares/new
  def new
    @room_square = RoomSquare.new
  end

  # GET /room_squares/1/edit
  def edit
  end

  # POST /room_squares or /room_squares.json
  def create
    @room_square = RoomSquare.new(room_square_params)

    respond_to do |format|
      if @room_square.save
        format.html { redirect_to @room_square, notice: "Room square was successfully created." }
        format.json { render :show, status: :created, location: @room_square }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_square.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_squares/1 or /room_squares/1.json
  def update
    respond_to do |format|
      if @room_square.update(room_square_params)
        format.html { redirect_to @room_square, notice: "Room square was successfully updated." }
        format.json { render :show, status: :ok, location: @room_square }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_square.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_squares/1 or /room_squares/1.json
  def destroy
    @room_square.destroy!

    respond_to do |format|
      format.html { redirect_to room_squares_path, status: :see_other, notice: "Room square was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_square
      @room_square = RoomSquare.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def room_square_params
      params.expect(room_square: [ :name, :square, :apartment_number_id ])
    end
end
