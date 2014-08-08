class User < ActiveRecord::Base
  has_many :bookmarks_users, dependent: :destroy
  has_many :bookmarks, through: :bookmarks_users
end
