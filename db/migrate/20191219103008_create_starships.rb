class CreateStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.integer :cost_in_credits
      t.integer :length
      t.integer :max_atmosphering_speed
      t.integer :crew
      t.integer :passengers
      t.integer :cargo_capacity
      t.string :consumables
      t.float :hyperdrive_rating
      t.integer :mglt
      t.string :starship_class
      t.string :url

      t.timestamps
    end
  end
end
