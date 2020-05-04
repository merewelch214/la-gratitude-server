class FeelingsController < ApplicationController

    def create
        if Feeling.where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).exists?
            feeling = Feeling.find_by('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
            feeling.update(score: params[:score])
            render json: feeling
        else 
            feeling = Feeling.new(feeling_params)
            if feeling.save
                render json: feeling
            end
        end
    end

    def show
        if Feeling.where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).exists?
            feeling = Feeling.find_by('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
            render json: feeling
        else 
            render json: {score: ''}
        end
    end

    private
    def feeling_params
        params.require(:feeling).permit(:user_id, :score)
    end
end
