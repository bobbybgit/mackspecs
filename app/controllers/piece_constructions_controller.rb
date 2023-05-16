class PieceConstructionsController < ApplicationController
  before_action :set_piece_construction, only: %i[ show edit update destroy ]

  # GET /piece_constructions or /piece_constructions.json
  def index
    @piece_constructions = PieceConstruction.all
  end

  # GET /piece_constructions/1 or /piece_constructions/1.json
  def show
  end

  # GET /piece_constructions/new
  def new
    @piece_construction = PieceConstruction.new
  end

  # GET /piece_constructions/1/edit
  def edit
  end

  # POST /piece_constructions or /piece_constructions.json
  def create
    @piece_construction = PieceConstruction.new(piece_construction_params)

    respond_to do |format|
      if @piece_construction.save
        format.html { redirect_to piece_construction_url(@piece_construction), notice: "Piece construction was successfully created." }
        format.json { render :show, status: :created, location: @piece_construction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piece_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_constructions/1 or /piece_constructions/1.json
  def update
    respond_to do |format|
      if @piece_construction.update(piece_construction_params)
        format.html { redirect_to piece_construction_url(@piece_construction), notice: "Piece construction was successfully updated." }
        format.json { render :show, status: :ok, location: @piece_construction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piece_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_constructions/1 or /piece_constructions/1.json
  def destroy
    @piece_construction.destroy

    respond_to do |format|
      format.html { redirect_to piece_constructions_url, notice: "Piece construction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_construction
      @piece_construction = PieceConstruction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piece_construction_params
      params.require(:piece_construction).permit(:piece_id, :instruction_id, :topstitch_rows)
    end
end
