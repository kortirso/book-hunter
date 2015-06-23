class Book < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :isbn, presence: true, uniqueness: true
	validates :name_ru, :author, :caption, :publisher, :image, :link, :point_id, presence: true
	belongs_to :point
	mount_uploader :image, ImageUploader
end
