class Property < ApplicationRecord
  validates :name,
            :type_of_property,
            :street,
            :external_number,
            :neighborhood,
            :city,
            :country,
            :rooms,
            :bathrooms,
            :comments,
            presence: { message: 'Required field!' }

  validates :name,
            :street,
            :neighborhood,
            length: { minimum: 1, maximum: 128 }

  validates :city,
            length: { minimum: 1, maximum: 64 }
  validates :type_of_property,
            inclusion: { in: %w[house department land commercial_ground] }

  validates :internal_number,
            format: { with: /^[a-zA-Z0-9-]+$/, multiline: true, message: 'Only alphanumerics and dash' },
            presence: true, if: :department_or_commercial_ground?

  validates :external_number,
            format: { with: /^[a-zA-Z0-9- ]+$/, multiline: true, message: 'Only alphanumerics, blank space and dash' },
            length: { minimum: 1, maximum: 12 }

  validates :country,
            inclusion: {
              in: ISO3166::Country.all.map(&:alpha2),
              message: 'Must be ISO-3166 compliant (only 2 characters'
            }

  validates :bathrooms,
            inclusion: { in: 0..1000 }, if: :land_or_commercial_ground?

  def department_or_commercial_ground?
    type_of_property == 'department' || 'commercial_ground'
  end

  def land_or_commercial_ground?
    type_of_property == 'land' || 'commercial_ground'
  end
end
