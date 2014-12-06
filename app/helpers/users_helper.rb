module UsersHelper

  def user_exists?(username)
    User.all.each do |user|
      return true if user.username == username
    end
    false
  end

  def convert_to_valid_username(username)
    # remove any invalid url usernames
    username.gsub(/[^\w-]/,'').downcase
  end

  def convert_to_valid_collection_name(collection_name)
    # convert any invalid url collection names to a dash
    collection_name.gsub(/[^\w-]/,'-').downcase
  end

  def prepend_http(url)
    # Check for http/https in the url - add http it is not in there
    if url =~ /^(http(s?):)?\/\//
      url
    else
      url.insert(0, "http://")
    end
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

end
