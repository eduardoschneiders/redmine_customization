class Catalogue < ActiveRecord::Base
  unloadable

  has_many :catalogues_issues
  has_many :catalogues, through: :catalogues_issues
end
