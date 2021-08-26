require 'rails_helper'

RSpec.describe Property, type: :model do
  # expect name to be present and validates :name, length: { minimum: 1, maximum: 128 }
  describe 'validations' do
    subject { build(:random_property) }

    it { should validate_presence_of(:name) }
  end
end
