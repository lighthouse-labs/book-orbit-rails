helpers do

  def all_collections
    collections = []
    BookmarksUser.all.each do |row|
      collections <<  BookmarksUsersCollection.find(row.id).collection.name
    end
    collections
  end

  def login?

  end

  def method_name

  end

end
