class CreateCarsParts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_parts do |t|
      t.references :cars, foreign_key: true
      t.references :parts, foreign_key: true

      t.timestamps
    end
  end
end
