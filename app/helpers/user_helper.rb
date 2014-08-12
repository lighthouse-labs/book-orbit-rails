module UserHelper

  def convert_to_valid_username(username)
    username.gsub(/\W+/,'').downcase
  end

end
