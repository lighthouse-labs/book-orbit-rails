class Bookmark < ActiveRecord::Base
  has_many :bookmarks_users, dependent: :destroy
  has_many :users, through: :bookmarks_users
end