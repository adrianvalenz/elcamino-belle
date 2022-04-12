require 'rails_helper'

RSpec.describe Client, type: :model do
  subject(:client) { described_class.new(
    name: "Mirabel Madrigal",
    phone_number: "555-555-5555"
  )}

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(client).to be_valid
    end

    it "is invalid without a name" do
      client.name = nil
      expect(client).to_not be_valid
    end

    it "is invalid without a phone number" do
      client.phone_number = nil
      expect(client).to_not be_valid
    end
  end
end
