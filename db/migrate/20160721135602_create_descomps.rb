class CreateDescomps < ActiveRecord::Migration[5.0]
  def change
    create_table :descomps do |t|
      t.string :company
      t.string :twitter
      t.string :linked
      t.timestamps
    end
  end
end
