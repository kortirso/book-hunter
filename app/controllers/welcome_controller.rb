class WelcomeController < ApplicationController
    def index
        @last = Book.lasts
    end
end