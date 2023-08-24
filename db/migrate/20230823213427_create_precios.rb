class CreatePrecios < ActiveRecord::Migration[7.0]
  def change
    create_table :precios do |t|
      t.string :nombre
      t.decimal :precio_pesos
      t.decimal :precio_uf

      t.timestamps
    end
  end
end
