# == Schema Information
# Schema version: 20081023115224
#
# Table name: roles
#
#  id   :integer(11)     not null, primary key
#  name :string(255)
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates_presence_of :name, :on => :create, :message => "can't be blank"
end
