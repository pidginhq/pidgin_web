class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.integer :restaurant_id
      t.string :restaurant_name
      t.string :restaurant_location
      t.string :restaurant_food_genre
      t.timestamps
    end
  end
end
