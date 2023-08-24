class AsociadosController < ApplicationController
  before_action :set_asociado, only: %i[ show edit update destroy ]

  # GET /asociados or /asociados.json
  def index
    @asociados = Asociado.all
  end

  # GET /asociados/1 or /asociados/1.json
  def show
  end

  # GET /asociados/new
  def new
    @asociado = Asociado.new
  end

  # GET /asociados/1/edit
  def edit
  end

  # POST /asociados or /asociados.json
  def create
    @asociado = Asociado.new(asociado_params)

    respond_to do |format|
      if @asociado.save
        format.html { redirect_to asociado_url(@asociado), notice: "Asociado was successfully created." }
        format.json { render :show, status: :created, location: @asociado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asociado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asociados/1 or /asociados/1.json
  def update
    respond_to do |format|
      if @asociado.update(asociado_params)
        format.html { redirect_to asociado_url(@asociado), notice: "Asociado was successfully updated." }
        format.json { render :show, status: :ok, location: @asociado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asociado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asociados/1 or /asociados/1.json
  def destroy
    @asociado.destroy

    respond_to do |format|
      format.html { redirect_to asociados_url, notice: "Asociado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asociado
      @asociado = Asociado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asociado_params
      params.require(:asociado).permit(:nombre, :direccion, :telefono, :email, :rut, :representante, :email_representante, :comuna_id, :estado, :tipo_socio_id)
    end
end
