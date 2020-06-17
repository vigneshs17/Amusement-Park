class Visitor < ApplicationRecord
    belongs_to :park, optional: true
end
