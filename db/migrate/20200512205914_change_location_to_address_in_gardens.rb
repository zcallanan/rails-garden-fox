class ChangeLocationToAddressInGardens < ActiveRecord::Migration[6.0]
  def change
    rename_column :gardens, :location, :address
  end
end
