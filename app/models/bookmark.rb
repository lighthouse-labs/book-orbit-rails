class Bookmark < ActiveRecord::Base
  has_many :bookmarks_users
  has_many :users, through: :bookmarks_users
end