class Library < ActiveRecord::Base
  has_and_belongs_to_many :bookmarks
  has_many :collections, :through => :bookmarks
end
