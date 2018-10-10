class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.float :initial_price
      t.integer :day
      t.references :entry, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
