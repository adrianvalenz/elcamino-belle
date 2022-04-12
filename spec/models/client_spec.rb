require 'rails_helper'

RSpec.describe Client, type: :model do
    subject(:client) { described_class.new(
      name: "Mirabel Madrigal",
      phone_number: "555-555-5555",
      street: "307 E Branch St",
      city: "Arroyo Grande",
      state: "CA",
      zipcode: "93420",
      latitude: nil,
      longitude: nil
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

  describe "#address" do
    def address
      [client.street, client.city, client.state, client.zipcode].compact.join(', ')
    end

    it "compacts columns to form one address string" do
      expect(address).to eq("307 E Branch St, Arroyo Grande, CA, 93420")
    end

    it "geocodes latitude after validation" do
      client.save
      expect(client.latitude).to_not be_nil
    end

    it "geocodes longitude after validation" do
      client.save
      expect(client.longitude).to_not be_nil
    end
  end

  describe "#address_changed?" do
    it "updates the latitude"
    it "updates the longitude"
  end
end
