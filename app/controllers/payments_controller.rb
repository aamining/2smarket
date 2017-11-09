class PaymentsController < ApplicationController

  def create
    @current_user_orders = Order.current_user_orders(current_user)
    @order_total = Order.total(@current_user_orders)
    @order_total_in_cents = Order.total_in_cents(@current_user_orders)

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @order_total_in_cents,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to orders_path
  end

end
