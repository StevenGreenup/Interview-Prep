class Changinglangdata < ActiveRecord::Migration[5.0]
  def change
    remove_column :bosses, :langcount

    add_column :bosses, :langcount, :text

  end
end
