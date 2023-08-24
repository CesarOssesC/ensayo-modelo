class CreateTiposPagos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipos_pagos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
