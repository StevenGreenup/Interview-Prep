class Addlang < ActiveRecord::Migration[5.0]
  def change
    add_column :bosses, :langcount, :string

  end
end
