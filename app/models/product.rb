class Product < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_one_attached :image
    has_and_belongs_to_many :stores
    accepts_nested_attributes_for :stores, allow_destroy: true 
end

