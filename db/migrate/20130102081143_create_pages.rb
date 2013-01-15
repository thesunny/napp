class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :site_id
      t.string :permalink
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
