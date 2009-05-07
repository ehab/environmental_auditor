# == Schema Information
# Schema version: 20081023115224
#
# Table name: profiles
#
#  id         :integer(11)     not null, primary key
#  user_id    :integer(11)
#  real_name  :string(255)
#  location   :string(255)
#  website    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# TODO: Specify profile fields in db/migrate/002_create_profiles.rb
# TODO: (base_app) Add avatar/photo upload
class Profile < ActiveRecord::Base
  # These fields in a profile are private, and will not be shown to other users.
  PRIVATE_FIELDS = ["id", "created_at", "updated_at", "user_id"]
  
  # TODO: Add validations, if you require any for the profile fields
  
  belongs_to :user
  
  # Filter out the private attributes
  def public_attributes
    self.attribute_names.select{|a| !Profile::PRIVATE_FIELDS.include?(a)}
  end
end
