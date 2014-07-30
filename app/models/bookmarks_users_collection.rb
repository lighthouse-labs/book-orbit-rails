class BookmarksUsersCollection < ActiveRecord::Base
  belongs_to :collection
  belongs_to :bookmarks_user
end