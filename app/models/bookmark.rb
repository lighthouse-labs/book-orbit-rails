class Bookmark < ActiveRecord::Base
  has_many :collections
  has_many :libraries, :through => :collections
end
