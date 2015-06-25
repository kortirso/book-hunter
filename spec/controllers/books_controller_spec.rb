RSpec.describe BooksController, type: :controller do

	describe "GET #index" do
		it "redirect to sign_in page when user not login" do
			get :index
			expect(response).to redirect_to('/admins/sign_in')
		end
		it "show list ob books for admin user" do
			@current_user = create(:admin)
			sign_in @current_user
			get :index
			expect(response).to render_template :index
		end
	end

	describe "GET #new" do
		it "redirect to sign_in page when user not login" do
			get :new
			expect(response).to redirect_to('/admins/sign_in')
		end
		it "show form_new_book for admin user" do
			@current_user = create(:admin)
			sign_in @current_user
			get :new
			expect(response).to render_template :new
		end
	end

end
