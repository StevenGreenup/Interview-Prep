class AddIntEndToResumes < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :intend1, :string
    add_column :resumes, :intend2, :string
    add_column :resumes, :intend3, :string
  end
end
