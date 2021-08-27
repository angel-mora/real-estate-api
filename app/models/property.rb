class Property < ApplicationRecord
  validates :name, :type, :street, :external_number, :neighborhood, :city, :country, :rooms, :bathrooms, :comments, presence: true
  # :internal_number

end
