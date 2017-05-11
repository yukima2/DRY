class BookController < ApplicationController

  before_action :set_book, only: [:show, :edit, :update, :destroy]
  after_action :redirect_root only: [:create, :update, :destroy]
  
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
  end

  def edit
  end

  def update
    book.update(params[:book].permit(:title, :author))
  end

  def destroy
    book.destroy
  end
  
  private
    def set_book
      book = Book.find(params[:id])
    end
    
    def redirect_root
      redirect_to root_path
    end
  
end