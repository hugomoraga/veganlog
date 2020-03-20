class Store < ApplicationRecord
    has_many :products, dependent: :destroy
    has_many :addresses, dependent: :delete_all
    accepts_nested_attributes_for :addresses, allow_destroy: true,
    reject_if: -> (attributes) {attributes['name'].blank?}
    validates_presence_of :name

    
end
