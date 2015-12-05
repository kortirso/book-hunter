class CreateBooks < ActiveRecord::Migration
    def change
        create_table :books do |t|
            t.integer :point_id
            t.string :name
            t.string :name_ru
            t.string :author
            t.string :isbn
            t.string :caption
            t.string :publisher
            t.string :image
            t.string :link
            t.timestamps null: false
        end
    end
end
