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

post '/:username/bookmarks/delete' do
  name = params[:username]
  @user = User.find_by(username: name)
  bookmark = Bookmark.find_by(url: params[:url])
  users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
  users_bookmark.destroy

  redirect :"/#{params[:username]}"
end

post '/:username' do
  name = params[:username]
  @user = User.find_by(username: name)

  url = append_http(params[:url])

  # If url does not exist in Bookmark table, create it
  if Bookmark.find_by(url: url).nil?
    bookmark = Bookmark.create(url: url)
  else
    bookmark = Bookmark.find_by(url: url)
  end

  @user.bookmarks << bookmark

  users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first

  # Check if collection a collection was passed and assign to "uncategorized" if not
  if params[:collection].nil? || params[:collection] == ""
    collection = Collection.find(1)
  else
    # If a collection was passed, check if it already exists
    if collection_exists?(params[:collection])
      collection = Collection.find_by(name: params[:collection])
    else
      # Otherwise create the new collection
      collection = Collection.create(name: params[:collection])
    end
  end

  users_bookmark.collections << collection
  

  erb :'/users/index'
end