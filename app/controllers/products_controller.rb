class ProductsController < ApplicationController

  def index

  end

  def show
    @product = Product.find_by(id: params[:product_id])
    @bids = Bid.where(product_id: params[:product_id])
    @new_bid = Bid.new
  end

  def new
    @product = Product.new
  end

  def create
    if params[:deadline] == "day"
      @deadline = Date.today + 1.day
    elsif params[:deadline] == "week"
      @users = Date.today + 7.day
    end
    @new_product = Product.new(title: params[:product][:title],description: params[:product][:description],minimum_bid: params[:product][:minimum_bid],deadline: @deadline,user_id: session[:current_user_id])

    if @new_product.save
      redirect_to "/user/show"
    else
      redirect_to '/user/new'
    end
  end

  def delete

  end
end
