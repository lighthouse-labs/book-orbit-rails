# Homepage (Root path)
get '/' do
  erb :index
end

get '/:username' do

  name = params[:username]
  @user = User.find_by(username: name)
  erb :'/users/index'

end
