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
end
