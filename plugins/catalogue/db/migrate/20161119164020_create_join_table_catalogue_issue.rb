class CreateJoinTableCatalogueIssue < ActiveRecord::Migration
  def change
    create_join_table :catalogues, :issues do |t|
      # t.index [:catalogue_id, :issue_id]
      # t.index [:issue_id, :catalogue_id]
    end
  end
end
