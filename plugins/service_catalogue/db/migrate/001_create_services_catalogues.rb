class CreateServicesCatalogues < ActiveRecord::Migration
  def change
    create_table :services_catalogues do |t|
      t.string :role
      t.string :activity
      t.integer :hst
    end
  end
end
