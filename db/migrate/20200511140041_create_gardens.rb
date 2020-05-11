class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.text :description
      t.string :location
      t.float :price
      t.text :house_rules
      t.string :filter_categories
      t.integer :size
      t.integer :capacity
      t.string :type
      t.boolean :availability
      t.references :user

      t.timestamps
    end
  end
end
