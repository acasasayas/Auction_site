class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:user_id])
    @products = Product.where(user_id: params[:user_id])
  end

  def new

  end

  def create

  end

  def delete

  end
end
