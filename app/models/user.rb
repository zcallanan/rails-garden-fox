class User < ApplicationRecord
  has_many :gardens
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :address, :country_code, :phone_number, :birth_date, :city, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
