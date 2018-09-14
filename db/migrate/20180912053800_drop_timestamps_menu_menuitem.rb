class DropTimestampsMenuMenuitem < ActiveRecord::Migration[5.1]
  def change
  	remove_column :menu_menu_items, :created_at
  	remove_column :menu_menu_items, :updated_at
  end
end
