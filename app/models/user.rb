class User < ApplicationRecord
  has_many :gardens
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :address, :country_code, :phone_number, :birth_date, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
