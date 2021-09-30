require 'rails_helper'

RSpec.describe 'Api::V1::Properties', type: :request do
  let(:random_property) { create(:random_property) }

  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/properties/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /properties/:id' do
    it 'returns http success' do
      get "/api/v1/properties/#{random_property.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /properties/' do
    it 'returns http success' do
      post '/api/v1/properties', params: { property: {
        name: 'A new property!',
        type_of_property: 'house',
        street: 'Mary Street',
        external_number: '12 a',
        internal_number: '1b',
        neighborhood: 'Condesa',
        city: 'Mexico City',
        country: 'MX',
        rooms: 4,
        bathrooms: 3,
        comments: 'Includes forniture!'
      } }, as: :json
      expect(response).to have_http_status(:created)
    end
  end

  describe 'PATCH /properties/:id' do
    it 'returns http success' do
      patch "/api/v1/properties/#{random_property.id}", params: {
        name: 'An old property!'
      }, as: :json
      expect(response).to have_http_status(:ok)
    end
  end
end
