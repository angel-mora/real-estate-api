require 'rails_helper'

RSpec.describe Property, type: :model do
  # expect name to be present and validates :name, length: { minimum: 1, maximum: 128 }
  context 'validation' do

    describe 'of presence' do
      subject { build(:random_property) }
      it { should validate_presence_of(:name).with_message('Required field!') }
      it { should validate_presence_of(:type).with_message('Required field!') }
      it { should validate_presence_of(:street).with_message('Required field!') }
      it { should validate_presence_of(:external_number).with_message('Required field!') }
      it { should validate_presence_of(:neighborhood).with_message('Required field!') }
      it { should validate_presence_of(:city).with_message('Required field!') }
      it { should validate_presence_of(:country).with_message('Required field!') }
      it { should validate_presence_of(:rooms).with_message('Required field!') }
      it { should validate_presence_of(:bathrooms).with_message('Required field!') }
      it { should validate_presence_of(:comments).with_message('Required field!') }
    end

    describe 'of length' do
      subject { build(:random_property) }
      it { should validate_length_of(:name).is_at_least(1).is_at_most(128) }
      it { should validate_length_of(:street).is_at_least(1).is_at_most(128) }
      it { should validate_length_of(:neighborhood).is_at_least(1).is_at_most(128) }
      it { should validate_length_of(:city).is_at_least(1).is_at_most(64) }
      it { should validate_length_of(:external_number).is_at_least(1).is_at_most(12) }
    end

    describe 'of format' do
      subject { build(:random_property) }
      it { should_not allow_value('1 b').for(:internal_number).with_message('Only alphanumerics and dash') }
      it { should_not allow_value('1_b').for(:external_number).with_message('Only alphanumerics, blank space and dash') }
      it { should_not allow_value('MXN').for(:country).with_message('Must be ISO-3166 compliant (only 2 characters') }
      it { should allow_value('FR').for(:country) }
      it { should allow_value(0).for(:bathrooms) }
    end
  end
end
