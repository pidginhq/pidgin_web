class DropTimestamps < ActiveRecord::Migration[5.1]
  def change
  	remove_column :menu_items , :updated_at
  end
end
