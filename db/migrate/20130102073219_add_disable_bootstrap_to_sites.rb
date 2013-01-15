class AddDisableBootstrapToSites < ActiveRecord::Migration
  def change
    add_column :sites, :disable_bootstrap, :boolean, default: false
  end
end
