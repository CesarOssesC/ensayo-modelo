class Asociado < ApplicationRecord
  belongs_to :comuna
  belongs_to :tipo_socio
  has_many :boletas
end
