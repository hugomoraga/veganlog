class Store < ApplicationRecord
    has_and_belongs_to_many :products
    has_many :addresses
    accepts_nested_attributes_for :addresses

end
