class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :original_id
      t.integer :leg_group
      t.string :number
      t.text :ar
      t.text :english
      t.string :short_ref_ar
      t.string :short_ref_en
      t.text :compliance_answer
      t.text :full_ref_ar
      t.text :full_ref_en

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
