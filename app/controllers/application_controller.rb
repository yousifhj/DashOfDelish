class ApplicationController < ActionController::Base

    def welcome        
    end 

    add_flash_types :success, :info, :danger        
end
