class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.all
    @books = Book.new
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end

  def create
    book = Book.new(book_params)
    if @book.save
      redirect_to book_show_path(book.id)
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_show_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
