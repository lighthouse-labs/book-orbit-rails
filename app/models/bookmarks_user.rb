class BookmarksUser < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :user
  has_many :bookmarks_users_collections
  has_many :collections, through: :bookmarks_users_collections
end