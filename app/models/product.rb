class Product < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_one_attached :imgUrl
    has_and_belongs_to_many :stores
end
