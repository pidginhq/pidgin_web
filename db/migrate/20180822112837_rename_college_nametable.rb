class RenameCollegeNametable < ActiveRecord::Migration[5.1]
  def change
  	rename_column :colleges, :university_name, :college_name
  end
end
