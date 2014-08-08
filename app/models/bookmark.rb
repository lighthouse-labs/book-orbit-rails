class Bookmark < ActiveRecord::Base
  has_and_belongs_to_many :libraries
  belongs_to :collections
end
