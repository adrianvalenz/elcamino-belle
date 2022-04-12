require 'rails_helper'

RSpec.describe Technician, type: :model do
  subject(:technician) { described_class.new(
    email: "adrian@bellecares.com",
    password: "secret",
    first_name: "adrian",
    last_name: "valenzuela",
  )}

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(technician).to be_valid
    end

    it "is invalid without an email" do
      technician.email = nil
      expect(technician).to_not be_valid
    end

    it "is invalid without a first_name" do
      technician.first_name = nil
      expect(technician).to_not be_valid
    end

    it "is invalid without a last_name" do
      technician.last_name = nil
      expect(technician).to_not be_valid
    end
  end
end
