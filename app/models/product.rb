class Product < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_one_attached :image
    belongs_to :stores
    accepts_nested_attributes_for :stores, allow_destroy: true 
    resourcify
    validates_presence_of :productname, :price, :ingredients, :markName



end

