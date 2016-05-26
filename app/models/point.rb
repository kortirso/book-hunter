class Point < ActiveRecord::Base
    has_many :books

    validates :level, presence: true, inclusion: { in: 0..5 }
    validates :name, presence: true, uniqueness: true
    validates :caption_ru, :parent, presence: true
end
