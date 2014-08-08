class Collection < ActiveRecord::Base
  # has_and_belongs_to_many :bookmarks, :libraries
  has_many :lbcs
  has_many :bookmark, :libraries, :through => :lbcs
end
