require 'rails_helper'

RSpec.describe 'Api::V1::Properties', type: :request do
  let(:random_property) { build(:random_property) }

  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/properties/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /properties/:id' do
    it 'returns http success' do
      post "/api/v1/properties/#{random_property.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /properties/:id' do
    it 'returns http success' do
      get "/api/v1/properties/#{random_property.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH /properties/:id' do
    it 'returns http success' do
      patch "/api/v1/properties/#{random_property.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
