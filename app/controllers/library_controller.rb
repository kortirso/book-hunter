class LibraryController < ApplicationController
	respond_to :json

	def index
	end

	def category
		category = Point.where(id: params[:id]).first
		respond_with(category) do |format|
			format.json { render :json => category.as_json }
		end
	end

	def books
		books = Book.where(point_id: params[:id]).order(created_at: :desc).all
		respond_with(books) do |format|
			format.json { render :json => books.as_json }
		end
	end

	def currentbook
		book = Book.find(params[:id])
		respond_with(book) do |format|
			format.json { render :json => book.as_json }
		end
	end

	def lastbooks
		books = Book.order(created_at: :desc).limit(10)
		respond_with(books) do |format|
			format.json { render :json => books.as_json }
		end
	end
end
