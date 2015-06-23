class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		respond_to do |format|
			if @book.save
				uploaded_io = params[:book][:link]
				File.open(Rails.root.join('public','uploads','book',@book.id.to_s,uploaded_io.original_filename), 'wb') do |file|
					file.write(uploaded_io.read)
				end
				@book.update_attribute('link', 'uploads/book/' + @book.id.to_s + '/' + uploaded_io.original_filename)
				format.html { redirect_to books_path }
			else
				format.html { render :new }
			end
		end
	end

	private
		def book_params
			params.require(:book).permit(:name, :isbn, :name_ru, :author, :caption, :publisher, :image, :link, :point_id)
		end
end
