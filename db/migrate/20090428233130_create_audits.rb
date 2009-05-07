class CreateAudits < ActiveRecord::Migration
  def self.up
    create_table :audits do |t|
      t.integer :facility_id
      t.integer :question_id
      t.integer :leg_group
      t.text :answer
      t.text :answer_comment
      t.string :evidence
      t.text :evidence_comment
      t.string :decision

      t.timestamps
    end
  end

  def self.down
    drop_table :audits
  end
end
