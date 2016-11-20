class CataloguesIssue < ActiveRecord::Base
  unloadable
  belongs_to :issue
  belongs_to :catalogue
end
