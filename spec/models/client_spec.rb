require 'rails_helper'

RSpec.describe Client, type: :model do
  subject { described_class.new(
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number
  )}

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valide without a phone number" do
      subject.phone_number = nil
      expect(subject).to_not be_valid
    end
  end
end
