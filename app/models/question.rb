# == Schema Information
# Schema version: 20090428231621
#
# Table name: questions
#
#  id                :integer(11)     not null, primary key
#  original_id       :string(255)
#  leg_group         :integer(11)
#  number            :string(255)
#  ar                :text
#  english           :text
#  short_ref_ar      :string(255)
#  short_ref_en      :string(255)
#  compliance_answer :text
#  full_ref_ar       :text
#  full_ref_en       :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Question < ActiveRecord::Base
  has_many :audits
  has_many :facilities, :through => :audits
end
