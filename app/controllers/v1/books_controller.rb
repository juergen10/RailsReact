class V1::BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Book.all
  end

  def new
    @book = Book.new
  end

  def store
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end
private
  def book_params
    params.permit(:Title, :ISBN, :AuthorID)
  end
end
