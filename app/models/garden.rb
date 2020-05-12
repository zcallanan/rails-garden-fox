class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :description, :location, :price, :size, :capacity, :type, :availability, :user_id, presence: true
end
