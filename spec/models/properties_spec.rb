require 'rails_helper'

RSpec.describe Property, type: :model do
  # expect name to be present and validates :name, length: { minimum: 1, maximum: 128 }
  context 'basic validation' do
    describe 'of content present' do
      subject { build(:random_property) }
      %w[name type street external_number neighborhood city country rooms bathrooms comments].each do |category|
        it { should validate_presence_of(category.to_sym).with_message('Required field!') }
      end
    end

    describe 'of length adequate' do
      subject { build(:random_property) }
      %w[name street neighborhood].each do |category|
        it { should validate_length_of(category.to_sym).is_at_least(1).is_at_most(128) }
      end
      it { should validate_length_of(:city).is_at_least(1).is_at_most(64) }
      it { should validate_length_of(:external_number).is_at_least(1).is_at_most(12) }
    end
  end

  context 'special validation' do
    describe 'of format' do
      subject { build(:random_property) }
      it { should_not allow_value('1 b').for(:internal_number).with_message('Only alphanumerics and dash') }
      it {
        should_not allow_value('1_b').for(:external_number).with_message('Only alphanumerics, blank space and dash')
      }
      it { should_not allow_value('MXN').for(:country).with_message('Must be ISO-3166 compliant (only 2 characters') }
      it { should allow_value('FR').for(:country) }
      it { should allow_value(0).for(:bathrooms) }
    end
  end
end
