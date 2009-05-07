class CreateCategoriesFacilitiesTable < ActiveRecord::Migration
  def self.up
    create_table :categories_facilities do |t|
      t.integer :category_id
      t.integer :facility_id
      t.timestamps
    end    

  end

  def self.down
    drop_table :categories_facilities
  end
end
