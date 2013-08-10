class LineItem < ActiveRecord::Base
  # attr_accessible :cart_id, :product_id
  attr_accessible :product, :product_id, :quantity, :cart_id, :id #本にミスあり

  belongs_to :product
  belongs_to :cart

  def total_price
  	product.price * quantity
  end

end
