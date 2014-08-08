class Collection < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :library
end