class MesesController < ApplicationController
  before_action :set_mes, only: %i[ show edit update destroy ]

  # GET /meses or /meses.json
  def index
    @meses = Mes.all
  end

  # GET /meses/1 or /meses/1.json
  def show
  end

  # GET /meses/new
  def new
    @mes = Mes.new
  end

  # GET /meses/1/edit
  def edit
  end

  # POST /meses or /meses.json
  def create
    @mes = Mes.new(mes_params)

    respond_to do |format|
      if @mes.save
        format.html { redirect_to mes_url(@mes), notice: "Mes was successfully created." }
        format.json { render :show, status: :created, location: @mes }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mes.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meses/1 or /meses/1.json
  def update
    respond_to do |format|
      if @mes.update(mes_params)
        format.html { redirect_to mes_url(@mes), notice: "Mes was successfully updated." }
        format.json { render :show, status: :ok, location: @mes }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mes.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meses/1 or /meses/1.json
  def destroy
    @mes.destroy

    respond_to do |format|
      format.html { redirect_to meses_url, notice: "Mes was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mes
      @mes = Mes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mes_params
      params.require(:mes).permit(:mes)
    end
end
