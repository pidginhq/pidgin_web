class DropDormTimestamps < ActiveRecord::Migration[5.1]
  def change
  	remove_column :dorms, :created_at, :updated_at
  end
end
