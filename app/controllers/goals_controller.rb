class GoalsController < ApplicationController

    def index 
        goals = Goal.where(user_id: 1)
        render json: goals
    end

    def create
        goal = Goal.new(goal_params)
        if goal.save
            render json: goal
        else
            render json: {error: 'no goals created'}
        end
    end

    def destroy
        goal = Goal.find_by(id: params[:id])
        goal.destroy
    end

    private
    def goal_params
        params.require(:goal).permit(:user_id, :title, :description, :completed_at)
    end

end
