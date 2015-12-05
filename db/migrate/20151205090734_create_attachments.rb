class CreateAttachments < ActiveRecord::Migration
    def change
        create_table :attachments do |t|
            t.string :image
            t.integer :book_id

            t.timestamps null: false
        end
    end
end
