class Client < ApplicationRecord
  validates_presence_of :name, :phone_number
end
