class Book < ActiveRecord::Base
    belongs_to :point
    mount_uploader :image, ImageUploader
    mount_uploader :link, BookUploader

    validates :name, :name_ru, :author, :caption, :publisher, :point_id, :isbn, :image, :link, presence: true
    validates :name, uniqueness: true
end
