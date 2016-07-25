class AddBossIdTodescomps < ActiveRecord::Migration[5.0]
  def change
    add_column :descomps, :boss_id, :string
  end
end
