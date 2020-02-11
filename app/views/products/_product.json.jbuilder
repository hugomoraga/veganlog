json.extract! product, :id, :productName, :comercialName, :markName, :price, :ingredients, :description, :imgUrl, :addressId, :storeId, :userId, :totalScore, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
