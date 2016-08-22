class SearchController < ApplicationController
  def index
    @books = Book.includes(:image).where('title LIKE(?)', "%#{params[:keyword]}%").limit(9)
  end
end
