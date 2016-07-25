class AddDescompIDtoBosses < ActiveRecord::Migration[5.0]
  def change
    add_column :bosses, :descomp_id, :integer
  end
end
