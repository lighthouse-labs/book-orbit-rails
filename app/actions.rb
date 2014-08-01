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

get '/:username/' do
  redirect :"/#{params[:username]}"
end

get '/:username/search' do
  search_array = params[:search_string].split(" ")
  name = params[:username]
  @user = User.find_by(username: name)

  @search_results = []

  search_array.each do | search_string |
    @matcher = search_string
    search_users_bookmarks
  end

  @search_results

  erb :'users/search'
end

get '/:username/collections/:collection' do

  name = params[:username]
  @user = User.find_by(username: name)
  @collection = params[:collection]
  erb :'/users/index'

end

post '/:username' do
  name = params[:username]
  @user = User.find_by(username: name)

  bookmark = Bookmark.create(url: params[:url])

  @user.bookmarks << bookmark

  users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first

  if params[:collection].nil? || params[:collection] == ""
    collection = Collection.find(1)
  else
    if collection_exists?(params[:collection])
      collection = Collection.find_by(name: params[:collection])
    else
      collection = Collection.create(name: params[:collection])
    end
  end

  users_bookmark.collections << collection
  

  erb :'/users/index'
end