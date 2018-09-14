class DropMenu < ActiveRecord::Migration[5.1]
  def change
  	drop_table :menus
  end
end
