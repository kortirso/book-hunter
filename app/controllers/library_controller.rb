class LibraryController < ApplicationController
    def show
        @point = Point.find_by(name: params[:id])
        render_not_found if @point.nil?
        @books = @point.books.order(id: :desc)
    end
end
