class TiposPagosController < ApplicationController
  before_action :set_tipo_pago, only: %i[ show edit update destroy ]

  # GET /tipos_pagos or /tipos_pagos.json
  def index
    @tipos_pagos = TipoPago.all
  end

  # GET /tipos_pagos/1 or /tipos_pagos/1.json
  def show
  end

  # GET /tipos_pagos/new
  def new
    @tipo_pago = TipoPago.new
  end

  # GET /tipos_pagos/1/edit
  def edit
  end

  # POST /tipos_pagos or /tipos_pagos.json
  def create
    @tipo_pago = TipoPago.new(tipo_pago_params)

    respond_to do |format|
      if @tipo_pago.save
        format.html { redirect_to tipo_pago_url(@tipo_pago), notice: "Tipo pago was successfully created." }
        format.json { render :show, status: :created, location: @tipo_pago }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_pagos/1 or /tipos_pagos/1.json
  def update
    respond_to do |format|
      if @tipo_pago.update(tipo_pago_params)
        format.html { redirect_to tipo_pago_url(@tipo_pago), notice: "Tipo pago was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_pago }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_pagos/1 or /tipos_pagos/1.json
  def destroy
    @tipo_pago.destroy

    respond_to do |format|
      format.html { redirect_to tipos_pagos_url, notice: "Tipo pago was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pago
      @tipo_pago = TipoPago.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_pago_params
      params.require(:tipo_pago).permit(:tipo)
    end
end
