class AddLayoutCssToSites < ActiveRecord::Migration
  def change
    add_column :sites, :layout_css, :text
  end
end
