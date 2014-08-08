class Library < ActiveRecord::Base
  has_many :collections
  has_many :bookmarks, :through => :collections
end