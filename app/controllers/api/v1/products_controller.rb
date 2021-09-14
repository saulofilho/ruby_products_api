# rails g controller api/v1/products index show --no-helper --no-assets --no-template-engine --no-test-framework

class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200
  end

  def create
    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      pricec: prod_params[:pricec],
      description: prod_params[:description]
    )
    if product.save
      render json: product, status: 200
    else
      render json: {error: "Error creating review."}
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status: 200
    else
      render json: {error: "Product Not Found."}
    end
  end

  private
    def prod_params
      params.required(:product).permit([
        :name,
        :brand,
        :price,
        :description
      ])
    end
end
