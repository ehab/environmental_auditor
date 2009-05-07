class Audit < ActiveRecord::Base
  belongs_to :facility
  belongs_to :question
end
