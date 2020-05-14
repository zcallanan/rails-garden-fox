class AddFeaturedColumnToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :featured, :boolean, default: false
  end
end
