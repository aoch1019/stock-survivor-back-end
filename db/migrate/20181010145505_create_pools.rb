class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.datetime :start_date

      t.timestamps
    end
  end
end
