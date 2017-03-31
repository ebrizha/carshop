class BasketController < ApplicationController
  before_action :authenticate_user!

  def show
    @products = @basket.product
  end

  def add
    @basket.product << Product.find(params['id'])
    if @basket.save
      respond_to do |format|
        format.json { render json: @basket}
      end
    end
  end
end
