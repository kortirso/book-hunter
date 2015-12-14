class BooksController < ApplicationController
    before_action :authenticate_admin!

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            uploaded_io = params[:book][:link]
            path = "public/uploads/book/#{@book.id.to_s}"
            Dir.mkdir(Rails.root.join(path), 0755)
            File.open(Rails.root.join(path,uploaded_io.original_filename), 'wb') do |file|
                file.write(uploaded_io.read)
            end
            @book.update_attribute('link', 'uploads/book/' + @book.id.to_s + '/' + uploaded_io.original_filename)
            redirect_to books_path
        else
            render :new
        end
    end

    private
        def book_params
            params.require(:book).permit(:name, :isbn, :name_ru, :author, :caption, :publisher, :image, :link, :point_id, attachments_attributes: [:id, :image])
        end
end
