class LibraryController < ApplicationController
	respond_to :json

	def index
	end

	def menu
		menu = Point.all
		respond_with(menu) do |format|
			format.json { render :json => menu.as_json }
		end
	end

	def category
		category = Point.where(id: params[:id]).first
		respond_with(category) do |format|
			format.json { render :json => category.as_json }
		end
	end

	def books
		books = Book.where(point_id: params[:id]).all
		respond_with(books) do |format|
			format.json { render :json => books.as_json }
		end
	end

	def lastbooks
		books = Book.order(created_at: :desc).limit(10)
		respond_with(books) do |format|
			format.json { render :json => books.as_json }
		end
	end
end
