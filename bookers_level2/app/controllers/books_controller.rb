class BooksController < ApplicationController
	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		@post_image.save
		redirect_to books_path
	end
	def index
		@books = Book.all
	end
	def show
		@book = Book.find(params[:id])
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end

	private
		def book_params
			params.require(:book).permit(:title, :body)
		end
end

