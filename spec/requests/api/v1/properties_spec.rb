require 'rails_helper'

RSpec.describe 'Api::V1::Properties', type: :request do
  describe 'GET /index' do
    subject { build(:random_property) }
  end
end
