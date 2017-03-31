class ProductController < ApplicationController

  def index
    @filter_params = filter_product
    @products      = Product.where(@filter_params).paginate(:page => params[:page], :per_page => 3).order('id DESC')
  end

  def show
    @product = Product.find params[:id]
  end

  private
    def filter_product
      p params
      if(!params[:product])
        params[:product] = {}
      end

      params[:product][:status] = 1
      params[:product].delete_if {|key, value| value == "" }
      params.fetch(:product).permit!
    end
end
