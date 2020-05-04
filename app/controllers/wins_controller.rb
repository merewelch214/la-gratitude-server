class WinsController < ApplicationController

    def index 
        wins = Win.where(user_id: 1)
        render json: wins
    end

    def create
        win = Win.new(win_params)
        if win.save
            render json: win
        else
            render json: {error: 'no wins created'}
        end
    end

    def destroy
        win = Win.find_by(id: params[:id])
        win.destroy
    end

    private
    def win_params
        params.require(:win).permit(:user_id, :title)
    end

end
