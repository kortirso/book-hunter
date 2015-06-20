class AddCaptionToPoints < ActiveRecord::Migration
	def change
		add_column :points, :caption, :string
	end
end
