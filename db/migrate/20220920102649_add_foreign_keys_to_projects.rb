class AddForeignKeysToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :skill_id, :integer
  end
end
