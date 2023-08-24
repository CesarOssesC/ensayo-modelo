class CreateMeses < ActiveRecord::Migration[7.0]
  def change
    create_table :meses do |t|
      t.string :mes

      t.timestamps
    end
  end
end
