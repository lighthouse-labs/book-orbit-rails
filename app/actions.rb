# Homepage (Root path)
get '/' do
  erb :index
end

get '/:username' do

  name = params[:username]

  if !user_exists?(name)
    User.create(username: name)
  end

  @user = User.find_by(username: name)
  erb :'/users/index'

end
