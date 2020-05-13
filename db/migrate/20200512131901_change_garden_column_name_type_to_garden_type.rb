class ChangeGardenColumnNameTypeToGardenType < ActiveRecord::Migration[6.0]
  def change
    rename_column(:gardens, :type, :garden_type)
  end
end
