class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :address, :price, :size, :capacity, :garden_type, :availability, :user_id, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
