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

get '/:username/collections/:collection' do

  name = params[:username]
  @user = User.find_by(username: name)
  @collection = params[:collection]
  erb :'/users/index'

end
