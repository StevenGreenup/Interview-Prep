class Addmorefieldstoresume < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :value, :string
    add_column :resumes, :objective, :string
    add_column :resumes, :skills1, :string
    add_column :resumes, :skills2, :string
    add_column :resumes, :skills3, :string
    add_column :resumes, :skills4, :string
    add_column :resumes, :skills5, :string

  end
end
