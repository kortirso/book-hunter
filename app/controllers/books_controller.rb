class BooksController < ApplicationController
    before_action :authenticate_admin!, except: :show
    skip_before_filter :verify_authenticity_token, only: :create
    
    def index
        @books = Book.all
    end

    def show
        @book = Book.find_by(name: params[:id])
        render_not_found if @book.nil?
    end

    def new
        
    end

    def create
        @book = Book.create(book_params)
        redirect_to books_path
    end

    private
    def book_params
        params.require(:book).permit(:name, :isbn, :name_ru, :author, :caption, :publisher, :image, :link, :point_id, attachments_attributes: [:id, :image])
    end
end
