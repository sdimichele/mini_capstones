class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user
  def index
    @carted_products = current_user.cart
    render 'index.json.jbuilder'

  end

    
  def create
    # product = Product.find(params[:product_id])
    # quantity = params[:quantity].to_i
    @carted_product = CartedProduct.new(
                                       user_id: current_user.id,
                                       product_id: params[:product_id],
                                       quantity: params[:quantity],
                                       status: "carted"
                                       
                                       )

    @carted_product.save

    render 'show.json.jbuilder'
  end

  def subtotal
    quantity * product.price
  end
  
end
