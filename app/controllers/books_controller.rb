class BooksController < ApplicationController
  before_action :check_user_signed_in

  def index
  end

  private
  def check_user_signed_in
    redirect_to root_path unless current_user
  end
end
