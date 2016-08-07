class Addcolumnstobosses < ActiveRecord::Migration[5.0]
  def change
    add_column :bosses, :langcount, :text
    add_column :bosses, :clone, :text
  end
end
