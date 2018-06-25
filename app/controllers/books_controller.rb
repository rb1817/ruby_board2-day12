class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit,:update,:destroy]
    
    def index
        @books = Book.all    
    end
    def new
    end
    def show
      
    end
    def edit
       
    end
    def create
        @book = Book.create(book_params)
 
      if  @book.save
        redirect_to "/book/#{@book.id}"
      else
        redirect_to :back
      end
    end
    def update
      @book.update(book_params)
      redirect_to "/book/#{@book.id}"
    
        
    end
    def destroy
     
      @book.destroy
      redirect_to "/books"
    end
    def set_book
        @book = Book.find(params[:id])
    end 
    
    def book_params
      {user_name: params[:user_name],password: params[:password]}
    end
    
end
