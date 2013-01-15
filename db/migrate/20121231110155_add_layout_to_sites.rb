class AddLayoutToSites < ActiveRecord::Migration
  def change
    add_column :sites, :layout, :string
  end
end
