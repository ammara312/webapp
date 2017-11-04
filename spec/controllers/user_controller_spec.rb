require 'rails_helper'

describe UsersController, type: :controller do

  before do
    @user = User.create!(first_name: "hello", last_name:"world",email: "testing@live.com", password: "123456",password_confirmation: "123456")
    @user2 = User.create!(first_name: "hi", last_name:"Ruby",email: "ruby@hotmail.com", password: "123456",password_confirmation: "123456")
  end

  describe 'GET #show' do
  	#first the context is if the user is logged in then ..
    context 'when a user is logged in' do
      before do
        sign_in @user
    	end
      it 'loads correct data for user details' do
        get :show, params: { id: @user.id }
        expect(assigns(:user)).to eq @user
        expect(response).to be_ok
      end
      it 'cannot access other users show page' do
        get :show, params: { id: @user2.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end
    # second case is when a user is not logged in ...

   context 'when a user is not logged in' do
     it 'redirects to login' do
       get :show, params: { id: @user.id }
       expect(response).to redirect_to(new_user_session_path)
     end
   end
  end
end	