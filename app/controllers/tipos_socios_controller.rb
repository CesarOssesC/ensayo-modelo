class TiposSociosController < ApplicationController
  before_action :set_tipo_socio, only: %i[ show edit update destroy ]

  # GET /tipos_socios or /tipos_socios.json
  def index
    @tipos_socios = TipoSocio.all
  end

  # GET /tipos_socios/1 or /tipos_socios/1.json
  def show
  end

  # GET /tipos_socios/new
  def new
    @tipo_socio = TipoSocio.new
  end

  # GET /tipos_socios/1/edit
  def edit
  end

  # POST /tipos_socios or /tipos_socios.json
  def create
    @tipo_socio = TipoSocio.new(tipo_socio_params)

    respond_to do |format|
      if @tipo_socio.save
        format.html { redirect_to tipo_socio_url(@tipo_socio), notice: "Tipo socio was successfully created." }
        format.json { render :show, status: :created, location: @tipo_socio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_socio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_socios/1 or /tipos_socios/1.json
  def update
    respond_to do |format|
      if @tipo_socio.update(tipo_socio_params)
        format.html { redirect_to tipo_socio_url(@tipo_socio), notice: "Tipo socio was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_socio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_socio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_socios/1 or /tipos_socios/1.json
  def destroy
    @tipo_socio.destroy

    respond_to do |format|
      format.html { redirect_to tipos_socios_url, notice: "Tipo socio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_socio
      @tipo_socio = TipoSocio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_socio_params
      params.require(:tipo_socio).permit(:tipo, :tipo_colaborador)
    end
end
