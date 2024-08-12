require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let!(:user) { User.create(username: 'testuser', email: 'test@example.com', auth_token: 'validtoken') }

  describe 'GET #index' do
    it 'returns a list of posts' do
      get :index
      expect(response).to have_http_status(:success)
      expect(response.content_type).to include('application/json')
    end
  end

  # Add additional test cases as needed
end
