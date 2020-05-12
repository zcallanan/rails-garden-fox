class Garden < ApplicationRecord
  belongs_to :user

  validates :description, :location, :price, :size, :capacity, :type, :availability, :user_id, presence: true
end
