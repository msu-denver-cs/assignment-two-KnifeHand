class CreateCarsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_products do |t|
      t.references :car, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
