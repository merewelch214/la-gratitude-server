class FeelingsController < ApplicationController

    def create
        feeling = Feeling.new(feeling_params)
        if feeling.save
            render json: feeling
        end
    end

    private
    def feeling_params
        params.require(:feeling).permit(:user_id, :score)
    end
end
