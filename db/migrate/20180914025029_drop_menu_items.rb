class DropMenuItems < ActiveRecord::Migration[5.1]
  def change
  	drop_table :menu_items
  end
end
