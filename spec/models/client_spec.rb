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
  end
end
