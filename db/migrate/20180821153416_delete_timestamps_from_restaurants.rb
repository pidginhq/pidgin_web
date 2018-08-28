class DeleteTimestampsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
  	remove_column :restaurants, :created_at
  	remove_column :restaurants, :updated_at
  end
end
