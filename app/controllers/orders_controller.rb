class OrdersController < ApplicationController
  def index
    @orders = order.all
  end
end
