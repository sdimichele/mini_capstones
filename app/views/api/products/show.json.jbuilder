json.partial! @product, partial: "product", as: :product

# json.id @product.id
# json.name @product.name
# json.description @product.description

# json.discounted @product.is_discounted?
# json.image_url @product.image_url

# if @product.is_discounted?
#   json.sale_message "This is a good deal!"
# end


# json.tax @product.tax
# json.total @product.total
# json.price @product.price

# json.formatted do
#   json.discounted number_to_currency(@product.is_discounted?)
#   json.tax number_to_currency(@product.tax)
#   json.total number_to_currency(@product.total)
# end