json.array!(@products) do |product|
  json.extract! product, :id, :name, :width, :height, :price, :description, :product_type
  json.url product_url(product, format: :json)
end
