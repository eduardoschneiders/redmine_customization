class Catalogue < ActiveRecord::Base
  unloadable

  has_and_belongs_to_many :issues
end
