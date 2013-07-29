class ApplicationController < ActionController::Base
  protect_from_forgery #リクエストとセッションに持たせたトークンが等しいことを検証

  private

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create #createした時点で新しいidを採番
      session[:cart_id] = cart.id #シンボル:cart_idをキーとしてsessionオブジェクトにcart.idをセット
      cart #←これ何?
    end

end
