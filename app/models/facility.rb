# == Schema Information
# Schema version: 20090428231621
#
# Table name: facilities
#
#  id             :integer(11)     not null, primary key
#  name           :string(255)
#  address        :text
#  tel            :string(255)
#  fax            :string(255)
#  contact_person :string(255)
#  notes          :text
#  user_id        :integer(11)
#  created_at     :datetime
#  updated_at     :datetime
#

class Facility < ActiveRecord::Base
  belongs_to :user
  has_many :audits
  has_many :questions, :through => :audits
  has_and_belongs_to_many :categories
end
