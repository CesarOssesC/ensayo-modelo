class CreateBoletasMeses < ActiveRecord::Migration[7.0]
  def change
    create_table :boletas_meses do |t|
      t.references :boleta, null: false, foreign_key: true
      t.references :mes, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
