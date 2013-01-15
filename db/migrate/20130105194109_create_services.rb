class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :site
      t.string :slug
      t.string :name

      t.timestamps
    end
  end
end
