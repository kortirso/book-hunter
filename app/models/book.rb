class Book < ActiveRecord::Base
    belongs_to :point
    mount_uploader :image, ImageUploader
    mount_uploader :link, BookUploader

    validates :name, :name_ru, :author, :caption, :publisher, :point_id, :image, :link, presence: true
    validates :name, uniqueness: true

    scope :lasts, -> { order(id: :desc).limit(12).includes(:point) }

    def name_short
        self.name_ru.truncate(40)
    end
end
