class CreateJoinTableCatalogueIssue < ActiveRecord::Migration
#  def change
#    create_join_table :catalogues, :issues do |t|
#      # t.index [:catalogue_id, :issue_id]
#      # t.index [:issue_id, :catalogue_id]
#    end
#  end


  def self.up
    create_table :catalogues_issues, :id => false do |t|
      t.column :catalogue_id, :integer, :null => false
      t.column :issue_id, :integer, :null => false
    end
    add_index :catalogues_issues, [:catalogue_id, :issue_id], :unique => true, :name => :catalogues_issues_ids
  end

  def self.down
    drop_table :catalogues_issues
  end
end