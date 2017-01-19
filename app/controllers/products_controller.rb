class ProductsController < ApplicationController

  def index

  end

  def show
    @product = Product.find_by(id: params[:product_id])
    @bids = Bid.where(product_id: params[:product_id])
  end

  def create

  end

  def delete

  end
end
