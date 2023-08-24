class CreateTiposSocios < ActiveRecord::Migration[7.0]
  def change
    create_table :tipos_socios do |t|
      t.string :tipo
      t.integer :tipo_colaborador, default: 0

      t.timestamps
    end
  end
end
