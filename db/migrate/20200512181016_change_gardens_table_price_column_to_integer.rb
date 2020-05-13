class ChangeGardensTablePriceColumnToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :gardens, :price, :integer
  end
end
