class RemoveCityFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :city
  end
end
