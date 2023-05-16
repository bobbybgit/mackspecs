class StyleSpecsController < ApplicationController
  before_action :set_style_spec, only: %i[ show edit update destroy ]

  # GET /style_specs or /style_specs.json
  def index
    @style_specs = StyleSpec.all
  end

  # GET /style_specs/1 or /style_specs/1.json
  def show
  end

  # GET /style_specs/new
  def new
    @style_spec = StyleSpec.new
  end

  # GET /style_specs/1/edit
  def edit
  end

  # POST /style_specs or /style_specs.json
  def create
    @style_spec = StyleSpec.new(style_spec_params)

    respond_to do |format|
      if @style_spec.save
        format.html { redirect_to style_spec_url(@style_spec), notice: "Style spec was successfully created." }
        format.json { render :show, status: :created, location: @style_spec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @style_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /style_specs/1 or /style_specs/1.json
  def update
    respond_to do |format|
      if @style_spec.update(style_spec_params)
        format.html { redirect_to style_spec_url(@style_spec), notice: "Style spec was successfully updated." }
        format.json { render :show, status: :ok, location: @style_spec }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @style_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /style_specs/1 or /style_specs/1.json
  def destroy
    @style_spec.destroy

    respond_to do |format|
      format.html { redirect_to style_specs_url, notice: "Style spec was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style_spec
      @style_spec = StyleSpec.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def style_spec_params
      params.require(:style_spec).permit(:style_id, :piece_id)
    end
end
