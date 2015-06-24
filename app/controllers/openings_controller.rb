class OpeningsController < ApplicationController
    def index
        @openings = Opening.all
    end
    
    def openings
        @openings = Opening.all
    end
    
    def show
        @openings = Opening.find(params[:id])    
    end
    
    
    def new
        @openings = Opening.new
    end
    
    def create
        @opening = Opening.create(openings_param)
        @opening.supervisor = Supervisor.find(1)
        
        if @opening.save
            flash[:success] = "Request created sucessfully!"
            redirect_to openings_path
            
        else
            render :new
        end
    end
    
    def edit
        @opening = Opening.edit(params[:id])
    end
    
    def update
       @opening = Opening.find(params[:id])
       
        if @opening.update(openings_param)
            flash[:success] = "Request created sucessfully!"
            redirect_to openings_path
        else
            render :edit
        end
    end
    
    private 
    
    def openings_param
        params.require(:opening).permit(:position, :replacing, :emp, :reason, :action, :shift, :dept, :schedule, :status)
    end
    
end


