class FacilitiesController < ApplicationController
    before_filter :logged_in?
    
    # later i'm gonna use activescaffold to fetch data as following 
    # active_scaffold :facilities
    
    def index
      @facilities = current_user.facilities
    end
    
    def new
      @facility = Facility.new
    end
    
  	

  	
end
