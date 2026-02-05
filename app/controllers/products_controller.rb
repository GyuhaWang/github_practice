class ProductsController < ApplicationController
  def index
    isTimeSale = params[:timeSale]

    if isTimeSale
      products = Product.where(isTimeSale: true).limit(12)
      render json: products
    else
      products = Product.all
      render json: products
    end
  end

  def show
    id = params.extract_value(:id)
    product = Product.find_by(id: id)
    @product = product
    render 'index'
  end
end
