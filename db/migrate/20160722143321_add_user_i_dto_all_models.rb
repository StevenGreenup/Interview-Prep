class AddUserIDtoAllModels < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :user_id, :integer
    add_column :descomps, :user_id, :integer
    add_column :bosses, :user_id, :integer
  end
end
