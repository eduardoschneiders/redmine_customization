class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
      t.string :role
      t.string :activity
      t.integer :hst
    end
  end
end
