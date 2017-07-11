class AddIconToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :icon, :text
  end
end
