class Removearchfrombosses < ActiveRecord::Migration[5.0]
  def change
    remove_column :bosses, :arch
  end
end
