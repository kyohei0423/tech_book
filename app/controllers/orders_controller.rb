class OrdersController < ApplicationController
  before_action :set_book

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    render :new unless @order.save
  end

  private
  def set_book
    @book = Book.find(params[:book_id])
  end

  def order_params
    params.require(:order).permit(:family_name, :first_name, :email, :phone_number, :postal_code, :address).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
