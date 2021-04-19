class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :owner
      t.string :model
      t.string :color

      t.timestamps
    end
  end
end
