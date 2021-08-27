require 'rails_helper'

RSpec.describe Property, type: :model do
  # expect name to be present and validates :name, length: { minimum: 1, maximum: 128 }
  describe 'validations' do
    subject { build(:random_property) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:external_number) }
    it { should validate_presence_of(:neighborhood) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:rooms) }
    it { should validate_presence_of(:bathrooms) }
    it { should validate_presence_of(:comments) }

    it { should validate_length_of(:name, minimum: 1, maximum: 128) }
  end
end
