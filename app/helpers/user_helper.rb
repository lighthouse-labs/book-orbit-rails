module UserHelper

  def convert_to_valid_username(username)
    username.gsub(/[^\w-]/,'').downcase
  end

  def convert_to_valid_collection_name(collection_name)
    collection_name.gsub(/[^\w-]/,'').downcase
  end

end
