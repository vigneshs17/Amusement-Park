class Ride < ApplicationRecord
    belongs_to :park, optional: true
end
