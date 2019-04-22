class BooksController < ApplicationController

    def index
        @books = Book.all
        #render 'book/index.html.erb'
        if params[:search]
          @books = Book.search(params[:search])
        else
          @books = Book.all
        end
    end

    def new
        @book = Book.new
        # render 'books/new.html.erb'
    end

    def show
        @book = Book.find(params[:id])
        # render 'books/show.html.erb'
    end

    def create
        @book = Book.new(params.require(:book).permit(:title, :description, :genre, :rating, :review))

        if @book.save
            redirect_to book_url(@book), notice: 'Book was successfully created'

        else
            flash[:alert] = "Error: Unable to create Book."
            render :new
        end
    end

end
