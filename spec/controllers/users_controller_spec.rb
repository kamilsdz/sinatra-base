require File.expand_path '../../spec_helper.rb', __FILE__

describe UsersController do
  describe 'Users controller' do
    it 'should allow accessing index' do
      get '/users'
      expect(last_response).to be_ok
    end

    it 'should allow accessing show' do
      user = create(:user)
      get "/users/#{ user.id }"
      expect(last_response).to be_ok
    end
  end
end