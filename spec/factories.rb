FactoryBot.define do
  factory :random_property, class: Property do
    name { 'The best offer!' }
    type_of_property { 'department' }
    street { 'Mary Street' }
    external_number { '12' }
    internal_number { '1b' }
    neighborhood { 'Saint Lake' }
    city { 'Oklahoma' }
    country { 'US' }
    rooms { 4 }
    bathrooms { 3 }
    comments { 'This is a nice option!' }
  end
end
