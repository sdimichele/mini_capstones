class Api::ProductsController < ApplicationController
  # def all_products
  #   @products = Product.all
  #   render 'all_products.json.jbuilder'
  # end

  # def first_product
  #   @product = Product.first
  #   render 'first_product.json.jbuilder'
  # end


  # def second_product
  #   @product = Product.find(2)
  #   render 'second_product.json.jbuilder'
  # end
  
  # def third_product
  #   @product = Product.find(3)
  #   render 'third_product.json.jbuilder'
  # end

  def index
    @products = Product.all
    render 'index.json.jbuilder'

  end

  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:image_url],
                           image_url: params[:image_url],
                           description: params[:description]
                          )

  @product.save
  render 'show.json.jbuilder'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(parmas[:id])
    @product.destroy

    render json: {message:"You deleted the product!"}
  end

end
