RSpec.describe LibraryController, type: :controller do

	describe "GET #category" do
		it "returns a successful 200 response" do
			get :category, format: :json, id: '1'
			expect(response).to be_success
		end
	end

	describe "GET #books" do
		it "returns a successful 200 response" do
			get :books, format: :json, id: '1'
			expect(response).to be_success
		end
	end

	describe "GET #currentbook" do
		it "returns a successful 200 response" do
			get :currentbook, format: :json, id: '1'
			expect(response).to be_success
		end
	end

	describe "GET #lastbooks" do
		it "returns a successful 200 response" do
			get :lastbooks, format: :json
			expect(response).to be_success
		end
	end

end
