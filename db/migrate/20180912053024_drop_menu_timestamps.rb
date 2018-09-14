class DropMenuTimestamps < ActiveRecord::Migration[5.1]
  def change
 	remove_column :menus, :created_at
 	remove_column :menus, :updated_at
  end
end
