class Client < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  has_many :appointments
  has_many :technicians, through: :appointments
  validates_presence_of :name, :phone_number

  def address
    [street, city, state, zipcode].compact.join(', ')
  end
end
