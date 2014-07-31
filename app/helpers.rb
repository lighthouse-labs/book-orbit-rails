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
    collections.uniq
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

  def bookmarks_by_collection
    bookmarks = []
    if !collection_exists?(@collection)
      Collection.create(name: @collection)
    end
    cid = Collection.find_by(name: @collection).id
    buc_arr = BookmarksUsersCollection.where(collection_id: cid)

    buc_arr.each do |buc|
      bid = BookmarksUser.find(buc.bookmarks_user_id).bookmark_id
      bookmarks << Bookmark.find(bid)
    end
    bookmarks
  end

end
