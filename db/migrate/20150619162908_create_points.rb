class CreatePoints < ActiveRecord::Migration
    def change
        create_table :points do |t|
            t.integer :parent
            t.string :name
            t.string :caption_ru
            t.timestamps null: false
        end
    end
end
