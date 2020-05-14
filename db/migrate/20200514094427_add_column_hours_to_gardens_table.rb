class AddColumnHoursToGardensTable < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :duration, :integer
    add_column :gardens, :start_time, :integer
  end
end
