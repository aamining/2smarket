class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def self.current_user_orders(user)
    Order.where(user_id: user.id)
  end

  def self.total(orders)
    orders.map { |order| order.product.price }.sum
  end

  def self.total_in_cents(orders)
    (orders.map { |order| order.product.price }.sum * 100).to_i
  end
end
