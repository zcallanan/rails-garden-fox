class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, :address, :price, :size, :capacity, :garden_type, :availability, :user_id, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  scope :search_by_address, lambda { |location|
    where("address ILIKE ?", "#{location}%")
  }

  scope :search_by_capacity, lambda { |number|
    where("capacity < ?", "#{number}")
  }

  scope :search_by_size, lambda { |range|
    where(size: range)
  }

  scope :search_by_garden_type, lambda { |value|
    where(garden_type: value)
  }

  # scope :search_by_date, lambda { |array|
  #   #start end Bookings table
  #   Garden.joins(:bookings).merge(Booking.select_by_date(array[0], array[1]))
  # }

end
