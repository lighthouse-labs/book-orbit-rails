class User < ActiveRecord::Base
  has_many :bookmarks_users
  has_many :bookmarks, through: :bookmarks_users
end