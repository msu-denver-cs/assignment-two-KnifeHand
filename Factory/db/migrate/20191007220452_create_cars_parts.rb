class CreateCarsParts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_parts do |t|
      t.references :cars
      t.references :parts

      t.timestamps
    end
  end
end
