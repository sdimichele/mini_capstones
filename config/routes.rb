Rails.application.routes.draw do
  namespace :api do
    # get '/all_products' => 'products#all_product'
    # get '/first_product' => 'products#first_product'
    # get '/second_product' => 'products#second_product'
    # get '/third_product' => 'products#third_product'
    get '/products' => 'products#index'
    post '/products' => 'products#create'
    get '/products/:id'  => 'products#show'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
  end
end
