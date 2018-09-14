class DropMenuitemTimestamps < ActiveRecord::Migration[5.1]
  def change
  	remove_column :menu_items, :created_at
  	remove_column :menu_itmes, :updated_at
  	add_column :menu_items, :menu_section, :string
  end
end
