class AddAddressCountryCodePhoneNumberBirthDateToUserModel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string
    add_column :users, :country_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :birth_date, :date
  end
end
