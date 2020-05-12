class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.float :booking_price
      t.string :status
      t.references :user
      t.references :garden

      t.timestamps
    end
  end
end
