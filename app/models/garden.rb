class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :location, :price, :size, :capacity, :garden_type, :availability, :user_id, presence: true
end
