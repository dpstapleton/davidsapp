require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    # @user = User.create!(email: "46@gmail.com", password: "testingtesting")
    # @user2 = User.create!(email: "55@gmail.com", password: "testingtesting")
    @user = FactoryGirl.create(:user)
  end

 describe "GET #show" do
    
    context "User is logged in" do

      it "loads correct user details" do
      	sign_in @user
        get :show, id: @user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end

    end

    context "No user is logged in" do
       it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to("/users/sign_in")
       end
    end
  end
end
