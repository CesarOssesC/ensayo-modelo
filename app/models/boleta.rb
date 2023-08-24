class Boleta < ApplicationRecord
  belongs_to :asociado
  belongs_to :tipo_pago
  has_many :boletas_meses
  has_many :meses, through: :boletas_meses
  has_many :years, through: :boletas_meses
end
