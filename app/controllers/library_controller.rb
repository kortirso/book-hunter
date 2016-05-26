class LibraryController < ApplicationController
    def show
        @point = Point.find_by(name: params[:id])
    end
end
