class Appointment < ApplicationRecord
  belongs_to :technician
  belongs_to :client

  validates_presence_of :date, :service
end
