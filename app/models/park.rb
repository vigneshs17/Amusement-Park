class Park < ApplicationRecord
    has_many :rides
    has_many :employess
    has_many :visitors
end
