class AddDefaultStatusValueToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :status, "requested"
  end
end
