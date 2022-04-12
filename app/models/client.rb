class Client < ApplicationRecord
  has_many :appointments
  has_many :technicians, through: :appointments
  validates_presence_of :name, :phone_number
end
