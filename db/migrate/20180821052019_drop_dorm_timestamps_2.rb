class DropDormTimestamps2 < ActiveRecord::Migration[5.1]
  def change
  	remove_column :dorms, :updated_at
  end
end
