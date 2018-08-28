class RestaurantsUrlImageProfile < ActiveRecord::Migration[5.1]
  def change
  	add_column :restaurants, :profile_image_url, :string
  end
end
