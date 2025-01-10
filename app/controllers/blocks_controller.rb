class BlocksController < ApplicationController
  before_action :set_block, only: %i[ show edit update destroy ]
  before_action :set_user, only: :index
  skip_before_action :authenticate_user!, only: :index

  # GET /blocks or /blocks.json
  def index
    @blocks = Block.all
  end

  # GET /blocks/1 or /blocks/1.json
  def show
  end

  # GET /blocks/new
  def new
    @block = Block.new
  end

  # GET /blocks/1/edit
  def edit
  end

  # POST /blocks or /blocks.json
  def create
    @block = Block.new(block_params)

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: "Block was successfully created." }
        format.json { render :show, status: :created, location: @block }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blocks/1 or /blocks/1.json
  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to @block, notice: "Block was successfully updated." }
        format.json { render :show, status: :ok, location: @block }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blocks/1 or /blocks/1.json
  def destroy
    @block.destroy!

    respond_to do |format|
      format.html { redirect_to blocks_path, status: :see_other, notice: "Block was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.includes(floors: { apartments: :apartment_number }).find(params.expect(:id))
    end

    def set_user
      User.create(name: 'admin', email: 'admin@gmail.com', password: 111111, role: 0)
      User.create(name: 'registrator1', email: 'registrator@gmail.com', password: 'salom123', role: 1)
      User.create(name: 'registrator1', email: 'registrator2@gmail.com', password: 'bino321', role: 1)
    end

    # Only allow a list of trusted parameters through.
    def block_params
      params.expect(block: [ :name ])
    end
end
