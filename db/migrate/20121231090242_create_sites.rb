class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :subdomain
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end
end
