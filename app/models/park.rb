class Park < ApplicationRecord
    has_many :rides, dependent: :destroy
    has_many :employees, dependent: :destroy
    has_many :visitors, dependent: :destroy
    delegate :pname, to: :pno, prefix: true
end
