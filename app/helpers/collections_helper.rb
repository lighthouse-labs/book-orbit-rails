module CollectionsHelper
  def collection_exists?(collection)
    Collection.all.each do |x|
      return true if x.name == collection
    end
    false
  end
end
