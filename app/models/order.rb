class Order < ActiveRecord::Base
  validates :family_name,
    presence: true,
    length: { minimum: 1, maxmum: 16 }
  validates :first_name,
    presence: true,
    length: { minimum: 1, maxmum: 16 }
  validates :postal_code,
    presence: true,
    length: { is: 7 }
  validates :address,
    presence: true,
    length: { minimum: 8, maxmum: 30}
end
