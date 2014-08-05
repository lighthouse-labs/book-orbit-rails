helpers do

  def logged_in?
    !session[:id].nil?
  end

  def password_protected?
    !@user.password.nil?
  end

  def redirect_if_not_permitted
    if password_protected? && session[:id] != @user.id
      redirect :"/#{params[:username]}/login"
    end
  end

  def all_collections
    collections = []
    BookmarksUser.all.each do |row|
      collections <<  BookmarksUsersCollection.where(bookmarks_user_id: row.id).first.collection.name
    end
    collections
  end

  def all_user_collections
    collections = []
    BookmarksUser.where(user_id: @user.id).each do |row|

      bookmarks_collections = BookmarksUsersCollection.where(bookmarks_user_id: row.id)

      bookmarks_collections.each do |bookmarks_collection|
        if bookmarks_collection.nil?
          #do nothing
        else
          collections << bookmarks_collection.collection.name
        end
      end
    end
    collections = collections.uniq.sort

    if collections.include? 'uncategorized'
      index = collections.index("uncategorized")
      collections.insert(collections.length-1, collections.delete_at(index))
    end
    collections
  end

  def user_exists?(username)
    User.all.each do |user|
      return true if user.username == username
    end
    false
  end

  def collection_exists?(collection)
    Collection.all.each do |x|
      return true if x.name == collection
    end
    false
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

  def prepend_http(url)
    if url =~ /^(http(s?):)?\/\//
      url
    else
      url.insert(0, "http://")
    end
  end

  #Nokogiri helpers

  def get_title(page)
    page.css('title').inner_text
  end

  def get_keywords(page)
    keywords_meta = page.xpath('//meta[@name="keywords"]/@content')
    kw = keywords_meta.map(&:value).map(&:downcase).join(', ')
    # quick fix that abandon keywords that end with ","
    return nil if kw.last == ','
  end

  def get_desc(page)
    page.xpath('//meta[@name="description"]/@content').map(&:value).first
  end

end
