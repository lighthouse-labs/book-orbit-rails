class Collection < ActiveRecord::Base
  belongs_to :bookmarks
  has_many :libraries
end