class AddColumnNameToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :name, :string
  end
end
