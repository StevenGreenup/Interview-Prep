class Addavailtodescomps < ActiveRecord::Migration[5.0]
  def change
    add_column :descomps, :available, :boolean, default:true
  end
end
