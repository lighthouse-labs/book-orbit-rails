class Collection < ActiveRecord::Base
  has_many :bookmarks_users_collections
  has_many :bookmarks_users, through: :bookmarks_users_collections  
end