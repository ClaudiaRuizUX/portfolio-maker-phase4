class AddForeignKeysToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :skill_id, :integer
  end
end
