class UsersController < BaseApp
  get '/users' do
    @users = User.all
    "Users: #{ @users.count }"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    "Username: #{ @user.username }"
  end
end