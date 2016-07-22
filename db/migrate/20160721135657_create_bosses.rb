class CreateBosses < ActiveRecord::Migration[5.0]
  def change
    create_table :bosses do |t|
      t.string :email
      t.string :twitter
      t.string :linked
      t.timestamps
    end
  end
end
