product = Product.new ({name: "Lavender", price: 10, image_url: 'https://i.ytimg.com/vi/agJ0ZqI5Gmo/maxresdefault.jpg', description: "English Lavender"})

product.save

product = Product.new({name: "Lily", price: 35, image_url: 'https://www.naturescape-photography.com/uploads/2/9/2/0/29208423/s150252964410551302_p109_i4_w2560.jpeg', description: "Peruvian Lilies"})

product.save

product = Product.new({name: "Rose", price: 30, image_url: "https://cdn.shopify.com/s/files/1/0022/8324/1537/collections/damaskrose.png?v=1546651210", description: "Damask Rose"})

product.save

product = Product.new({name: "Tulip", price: 20, image_url: 'https://previews.123rf.com/images/ganesh005/ganesh0051806/ganesh005180600334/103895698-blushing-lady-tulips-at-windmill-island-tulip-garden.jpg', description: "Lady Tulips"})

product.save

puts "Complete"