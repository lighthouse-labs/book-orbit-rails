class UserController < ApplicationController
  def index
  end

  def show
    if params[:collection]
      @collection = params[:collection]
    end

    if @user = User.find_by(username: params[:username])
    else
      create
    end
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user.password_digest.nil?
      render :add_password
    end
  end

  def add_password

  end

  def search
    @user = User.find_by(username: params[:username])
    @search_array = params[:search_string].split(" ")

    @search_results = []

    @search_array.each do | search_string |
      @matcher = search_string
      search_users_bookmarks
    end

    @search_results
  end

  def create

    valid_username = convert_to_valid_username(params[:username])
    @user = User.new(username: valid_username)
    if @user.save
      redirect_to "/#{valid_username}"
    else
      # go somewhere else
    end
  end

  def edit
    @user = User.find_by(username: params[:username])

    add_bookmark if params[:add_bookmark]
    delete_bookmark if params[:delete_bookmark]
    delete_collection if params[:delete_collection]
    add_collection if params[:add_collection]
  end

  def add_bookmark
    # Append the http:// if it does not exist in the submitted url
    url = prepend_http(params[:url])

    begin

    if Bookmark.find_by(url: url).nil?
      begin
      page = Nokogiri::HTML(open(url, :allow_redirections => :safe))
      # if nokogiri parses in an empty title, set title = url
      title = get_title(page)
      title = url if title.empty?

      bookmark = Bookmark.create(url: url, title: title, keywords: get_keywords(page), desc: get_desc(page))

      # Avoid using open-uri if the url returns a HTTP error
      # Instead, use the url as the title
      rescue OpenURI::HTTPError => he
        puts "Got HTTP error: #{he}"
        bookmark = Bookmark.create(url: url, title: url)
      end
    else
      bookmark = Bookmark.find_by(url: url)
    end
    # If user already bookmarked it...

    if BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
      @existing_bookmark = bookmark
      # I want it to stop here and show the error. i.e. Don't proceed to add it to the user's bookmarks.
    else
      # Add to the user's list of bookmarks
      @user.bookmarks << bookmark

      # Select the user's bookmark
      users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first

      # Array of collections from the "add" form
      submitted_collections = params[:collection].uniq

      # Go through each collection name
      submitted_collections.each do |collection|

        # Check if a collection was passed. If it's empty, then assign it to "uncategorized"
        if collection == ""
          collection = Collection.find(1)
        else
          # If a collection was passed, check if it already exists
          if collection_exists?(collection)
            collection = Collection.find_by(name: collection)
          else
            # Otherwise create the new collection
            valid_collection_name = convert_to_valid_collection_name(collection)
            collection = Collection.create(name: valid_collection_name)
          end
        end
        users_bookmark.collections << collection
      end
    end
    rescue SocketError, URI::InvalidURIError => se
      puts "Got socket error: #{se}"
      @url_is_invalid = true
    end #end begin block

    render :show
  end

  def delete_bookmark
    bookmark = Bookmark.find_by(url: params[:url])
    users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
    binding.pry
    users_bookmark.destroy
    render :show
  end

  def delete_collection
    collection = Collection.find_by(name: params[:collection_name])
    bookmark = Bookmark.find_by(url: params[:url])
    users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
    users_bookmark_in_collection = BookmarksUsersCollection.where(bookmarks_user_id: users_bookmark.id).where(collection_id: collection.id).first
    users_bookmark_in_collection.destroy
    render :show
  end

  def add_collection
    bookmark = Bookmark.find_by(url: params[:url])
    users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
    collection = params[:add_collection]
    if collection_exists?(collection)
      collection = Collection.find_by(name: collection)
    else
      # Otherwise create the new collection
      collection = Collection.create(name: collection)
    end
    users_bookmark.collections << collection
    render :show
  end

  protected

  def collection_exists?(collection)
    Collection.all.each do |x|
      return true if x.name == collection
    end
    false
  end

  def search_users_bookmarks
    Bookmark.all.each do |bookmark|
      if BookmarksUser.where(bookmark_id: bookmark.id).where(user_id: @user.id).first
        @search_results << bookmark if bookmark.url =~ /#{@matcher}/
        @search_results << bookmark if bookmark.desc =~ /#{@matcher}/
      end
    end

    Collection.all.each do |collection|
      if collection.name =~ /#{@matcher}/
        @collection = collection.name
        users_bookmarks_in_collection.each do | bookmark |
          @search_results << bookmark
        end
      end
    end
  end

  def users_bookmarks_in_collection
    bookmarks_in_collection = []
    @collection = Collection.find_by(name: @collection)
    all_user_bookmarks_in_collection = BookmarksUsersCollection.where(collection_id: @collection.id)
    # now we need our current users' bookmarks
    all_user_bookmarks_in_collection.each do |row|
      # bookmarks_user_id
      all_user_bookmarks = BookmarksUser.where(id: row.bookmarks_user_id)
      all_user_bookmarks.each do | bookmark |
        if bookmark.user_id == @user.id
          # now get the bookmark itself.
          bookmarks_in_collection << Bookmark.find(bookmark.bookmark_id)
        end
     end
    end
    bookmarks_in_collection
  end


end
