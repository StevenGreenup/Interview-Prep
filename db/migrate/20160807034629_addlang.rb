class Addlang < ActiveRecord::Migration[5.0]
  def change
    remove_column :bosses, :langcount
    remove_column :bosses, :clone
  end
end
