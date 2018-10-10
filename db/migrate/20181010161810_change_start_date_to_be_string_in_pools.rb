class ChangeStartDateToBeStringInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :start_date, :string
  end
end
