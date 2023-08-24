class BoletaMes < ApplicationRecord
  belongs_to :boleta
  belongs_to :mes
  belongs_to :year
end
