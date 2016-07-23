class Addurltodescomp < ActiveRecord::Migration[5.0]
  def change
    add_column :descomps, :url, :string
  end
end
