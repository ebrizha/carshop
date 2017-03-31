class Basket::RestfulActionController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: @basket
  end

  def show
    render json: @basket
  end
end
