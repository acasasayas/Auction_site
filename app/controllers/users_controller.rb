class UsersController < ApplicationController

  def show
    @user = User.find_by(id: session[:current_user_id])
    @products = Product.where(user_id: params[:user_id])
    session[:current_user_id] = @user.id
  end

  def new

  end

  def create
    @user = User.new(username: params[:user][:username],password: params[:user][:password],mail: params[:user][:mail])
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to '/user/show'
    else
      redirect_to '/'
    end
  end

  def delete

  end

  def home

      @user = User.new

  end

end
