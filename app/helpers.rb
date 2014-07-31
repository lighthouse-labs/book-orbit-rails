helpers do

  def all_collections
    collections = []
    BookmarksUser.all.each do |row|
      collections <<  BookmarksUsersCollection.find(row.id).collection.name
    end
    collections
  end

  def all_user_collections
    collections = []
    BookmarksUser.where(user_id: @user.id).each do |row|
      collections << BookmarksUsersCollection.find(row.id).collection.name
    end
    collections
  end

  def user_exists?(username)
    User.all.each do |user|
      return true if user.username == username
    end
    false
  end

  def login?

  end

  def method_name

  end

end
