class AddCoordinatesToGarden < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :latitude, :float
    add_column :gardens, :longitude, :float
  end
end
