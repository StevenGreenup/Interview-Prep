class Addcolumnstobosses < ActiveRecord::Migration[5.0]
  def change
    add_column :bosses, :arch, :text
    add_column :bosses, :clone, :text
  end
end
