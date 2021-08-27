class Property < ApplicationRecord
  validates :name,
            :type,
            :street,
            :external_number,
            :neighborhood,
            :city,
            :country,
            :rooms,
            :bathrooms,
            :comments,
            presence: { message: 'Required field!' }

  validates :name, :street, :neighborhood, length: { minimum: 1, maximum: 128 }
  validates :type, inclusion: { in: %w[house department land commercial_ground] }
  validates :internal_number, presence: true, if: :department_or_commercial_ground?
  validates :external_number,
            format: { with: /^[a-zA-Z0-9-]+$/, multiline: true, message: 'Format not allowed!' },
            length: { minimum: 1, maximum: 12}

  def department_or_commercial_ground?
    type == 'deparment' || 'commercial_ground'
  end
end
