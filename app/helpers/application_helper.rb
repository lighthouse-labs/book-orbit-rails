module ApplicationHelper
  def logged_in?
    !session[:id].nil?
  end

  def password_protected?
    !@user.password_digest.nil?
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
end
