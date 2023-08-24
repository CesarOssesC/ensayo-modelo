class CreateBoletas < ActiveRecord::Migration[7.0]
  def change
    create_table :boletas do |t|
      t.string :payer
      t.string :flowOrder
      t.integer :status
      t.string :subject
      t.decimal :amount
      t.string :currency
      t.string :media
      t.string :token
      t.references :asociado, null: false, foreign_key: true
      t.integer :estado
      t.references :tipo_pago, null: false, foreign_key: true

      t.timestamps
    end
  end
end
