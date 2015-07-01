class Book < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :image, presence: true, uniqueness: true
	validates :link, presence: true, uniqueness: true
	validates :name_ru, :author, :caption, :publisher, :point_id, :isbn, presence: true
	belongs_to :point
	mount_uploader :image, ImageUploader
end
