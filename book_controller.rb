class BookController < ApplicationController

  before_action :set_book, only: [:show, :edit, :update, :destroy]
  
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(params[:book].permit(:title, :author))
    book.save
    redirect_to root_path
  end

  def edit
  end

  def update
    book.update(params[:book].permit(:title, :author))
    redirect_to root_path
  end

  def destroy
    book.destroy
    redirect_to root_path
  end
  
  private
    def set_book
      book = Book.find(params[:id])
    end
end