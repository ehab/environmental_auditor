class Admin::FacilitiesController < ApplicationController
  require_role :admin
  layout 'admin'

  active_scaffold :facility 

end
