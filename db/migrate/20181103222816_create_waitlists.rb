class CreateWaitlists < ActiveRecord::Migration[5.1]
  def change
    create_table :waitlists do |t|
      t.text :email
      t.timestamps
    end
  end
end
