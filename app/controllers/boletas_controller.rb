class BoletasController < ApplicationController
  before_action :set_boleta, only: %i[ show edit update destroy ]

  # GET /boletas or /boletas.json
  def index
    @boletas = Boleta.all
  end

  # GET /boletas/1 or /boletas/1.json
  def show
  end

  # GET /boletas/new
  def new
    @boleta = Boleta.new
  end

  # GET /boletas/1/edit
  def edit
  end

  # POST /boletas or /boletas.json
  def create
    @boleta = Boleta.new(boleta_params)

    respond_to do |format|
      if @boleta.save
        format.html { redirect_to boleta_url(@boleta), notice: "Boleta was successfully created." }
        format.json { render :show, status: :created, location: @boleta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletas/1 or /boletas/1.json
  def update
    respond_to do |format|
      if @boleta.update(boleta_params)
        format.html { redirect_to boleta_url(@boleta), notice: "Boleta was successfully updated." }
        format.json { render :show, status: :ok, location: @boleta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletas/1 or /boletas/1.json
  def destroy
    @boleta.destroy

    respond_to do |format|
      format.html { redirect_to boletas_url, notice: "Boleta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta
      @boleta = Boleta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boleta_params
      params.require(:boleta).permit(:payer, :flowOrder, :status, :subject, :amount, :currency, :media, :token, :asociado_id, :estado, :tipo_pago_id)
    end
end
