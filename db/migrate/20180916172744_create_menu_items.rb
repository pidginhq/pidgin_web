class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.integer :menu_id
      t.string :menu_item_name
      t.string :menu_section
      t.float :item_price
    end
  end
end
