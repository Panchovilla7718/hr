class OpeningsController < ApplicationController
    def index
        @openings = Opening.all
    end
    
    def openings
        @openings = Opening.all
    end
    
    def new
    
    end
    
end
