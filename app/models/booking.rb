class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :garden

  # scope: select_by_date, lambda { |start_date, end_date|
  #   where("start_date >= ? && end_date <= ?", start_date, end_date)
  # }
end
