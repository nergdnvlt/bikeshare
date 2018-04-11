class CartController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    @accessory = Accessory.find(params[:accessory_id])
    @cart = Cart.new(session[:cart])
    @cart.add_accessory(@accessory.id)
    session[:cart] = @cart.contents
    flash[:notice] = "You now have #{pluralize(session[:cart][@accessory.id.to_s], @accessory.title)} in your cart."
    redirect_to accessories_path
  end

  def index

  end


end