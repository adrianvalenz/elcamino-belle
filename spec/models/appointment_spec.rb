require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:technician) { FactoryBot.create(:technician, id: 3) }
  let(:client) { FactoryBot.create(:client, id: 5) }
  
  subject(:appointment) { described_class.new(
    date: "2022-04-12 00:00:00.000000000 +0000",
    service: "Pedicure",
    technician_id: technician.id,
    client_id: client.id
  )}

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(appointment).to be_valid
    end

    it "is invalid without a date" do
      appointment.date = nil
      expect(appointment).to_not be_valid
      expect(appointment.date).to_not eq("2022-04-12 00:00:00.000000000 +0000")
    end

    it "is invalid without a service" do
      appointment.service = nil
      expect(appointment).to_not be_valid
      expect(appointment.service).to_not eq("Pedicure")
    end

    it "is invalid without a technician" do
      appointment.technician_id = nil
      expect(appointment).to_not be_valid
      expect(appointment.technician_id).to_not eq(3)
    end

    it "is invalid without a client" do
      appointment.client_id = nil
      expect(appointment).to_not be_valid
      expect(appointment.client_id).to_not eq(5)
    end
  end
end
