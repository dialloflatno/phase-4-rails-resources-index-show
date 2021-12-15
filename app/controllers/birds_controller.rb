class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds , status: 200
    end


    def show 
        
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: { error: "Bird not found" }, status: :not_found
            # render json: { error: "Not Birds Found!  0 = (0)>`s" } ,status:404
        end  
    end

end
