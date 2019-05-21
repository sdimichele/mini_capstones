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

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    
    get '/orders' => 'orders#index'
    post '/orders' => 'orders#create'
    
    get '/carted_products' => 'carted_products#index'
    post '/carted_products' => 'carted_products#create'
    get '/carted_products/:id' => 'carted_products#show'


  end
end
