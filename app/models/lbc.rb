class Lbc < ActiveRecord::Base
  belongs_to :library
  belongs_to :bookmark
  belongs_to :collection
end