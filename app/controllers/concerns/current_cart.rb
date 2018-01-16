module CurrentCart

  private

  def set_cart
    @cart = Cart.find(session[:id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end