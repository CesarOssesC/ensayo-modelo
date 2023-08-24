class BoletasMesesController < ApplicationController
  before_action :set_boleta_mes, only: %i[ show edit update destroy ]

  # GET /boletas_meses or /boletas_meses.json
  def index
    @boletas_meses = BoletaMes.all
  end

  # GET /boletas_meses/1 or /boletas_meses/1.json
  def show
  end

  # GET /boletas_meses/new
  def new
    @boleta_mes = BoletaMes.new
  end

  # GET /boletas_meses/1/edit
  def edit
  end

  # POST /boletas_meses or /boletas_meses.json
  def create
    @boleta_mes = BoletaMes.new(boleta_mes_params)

    respond_to do |format|
      if @boleta_mes.save
        format.html { redirect_to boleta_mes_url(@boleta_mes), notice: "Boleta mes was successfully created." }
        format.json { render :show, status: :created, location: @boleta_mes }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boleta_mes.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletas_meses/1 or /boletas_meses/1.json
  def update
    respond_to do |format|
      if @boleta_mes.update(boleta_mes_params)
        format.html { redirect_to boleta_mes_url(@boleta_mes), notice: "Boleta mes was successfully updated." }
        format.json { render :show, status: :ok, location: @boleta_mes }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boleta_mes.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletas_meses/1 or /boletas_meses/1.json
  def destroy
    @boleta_mes.destroy

    respond_to do |format|
      format.html { redirect_to boletas_meses_url, notice: "Boleta mes was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta_mes
      @boleta_mes = BoletaMes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boleta_mes_params
      params.require(:boleta_mes).permit(:boleta_id, :mes_id, :year_id)
    end
end
