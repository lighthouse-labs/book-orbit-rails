helpers do

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

      bookmarks_collection = BookmarksUsersCollection.where(bookmarks_user_id: row.id).first

      if bookmarks_collection.nil?
        #do nothing
      else
        collections << bookmarks_collection.collection.name
      end
    end
    collections = collections.uniq

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

  def append_http(url)
    if (url =~ /^http:\/\// ||
        url =~ /^https:\/\//)
      url
    else
      url.insert(0, "http://")
    end
  end

  #Nokogiri helpers

  def get_title(url)
    page = Nokogiri::HTML(open(url))
    page.css('title').inner_text
  end

end
