class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.integer :user_id
      t.string :name
      t.text :address
      t.string :tel
      t.string :fax
      t.string :contact_person
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :facilities
  end
end
