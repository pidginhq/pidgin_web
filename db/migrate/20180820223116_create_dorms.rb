class CreateDorms < ActiveRecord::Migration[5.1]
  def change
    create_table :dorms do |t|
      t.string :dorm_name
      t.integer :delivery_zone
   	  t.integer :user_count
      t.timestamps
    end
  end
end
