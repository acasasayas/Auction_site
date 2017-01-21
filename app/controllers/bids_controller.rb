class BidsController < ApplicationController

  def create
    @bid = Bid.new(amount: params[:bid][:amount].to_f,)
  end

end
