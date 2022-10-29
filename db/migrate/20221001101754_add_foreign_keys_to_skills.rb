class AddForeignKeysToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :project_id, :integer
    add_column :skills, :section_id, :integer
  end
end
