class Bookmarks < ActiveRecord::Base
  # has_and_belongs_to_many :libraries, :collections
  has_many :lbcs
  has_many :collections, :libraries, :through => :lbcs
end
