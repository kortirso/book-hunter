class Book < ActiveRecord::Base
    belongs_to :point
    mount_uploader :image, ImageUploader

    validates :name, :link, :name_ru, :author, :caption, :publisher, :point_id, :isbn, :image, presence: true
    validates :name, :link, uniqueness: true
end
