class CreateAsociados < ActiveRecord::Migration[7.0]
  def change
    create_table :asociados do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :rut
      t.string :representante
      t.string :email_representante
      t.references :comuna, null: false, foreign_key: true
      t.integer :estado
      t.references :tipo_socio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
