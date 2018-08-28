class CreateColleges < ActiveRecord::Migration[5.1]
  def change
    create_table :colleges do |t|
      t.string :university_name
      t.integer :university_idra
      t.timestamps
    end
  end
end
