class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions

  before_action :init_basket
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  def init_basket
    if (current_user)
      if (!current_user.basket)
        Basket.create user: current_user
      end

      @basket = current_user.basket
    end
  end

end
