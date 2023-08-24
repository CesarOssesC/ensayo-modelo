class Mes < ApplicationRecord
    has_many :boletas_meses
    has_many :boletas, through: :boletas_meses
end
