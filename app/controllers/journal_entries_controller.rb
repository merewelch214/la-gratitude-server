class JournalEntriesController < ApplicationController

    def create
        journal_entry = JournalEntry.new(journal_entry_params)
        if journal_entry.save
            render json: journal_entry
        else
            render json: {errors: journal_entry.errors.full_messages}
        end
    end

    def today_journal_entry 
        if JournalEntry.where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).exists?
            journal_entry = JournalEntry.find_by('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
            render json: journal_entry
        else
            render json: {entry: '', id: '', score: '', comparative: ''}
        end
    end

    def edit
        journal_entry = JournalEntry.find(params[:id])
        journal_entry.update(entry: params[:entry], score: params[:score])
        render json: journal_entry
    end

    def destroy
        JournalEntry.find(params[:id]).destroy
    end

    def get_journal_dates 
        dates = JournalEntry.where(:user_id => params[:id]).pluck(:created_at)
        #.map{|date| date.strftime("%a %b %d %Y")}
        render json: dates
    end

    def journal_entry_score_dates
        journal_entries = JournalEntry.order(:created_at).where(user_id: 1).pluck(:created_at, :comparative)
        render json: journal_entries
    end

    # to do: make this sorted and get only recent record
    def index
        journal_entries = JournalEntry.order(:created_at).where(user_id: 1)
        render json: journal_entries
    end


    private
    def journal_entry_params
        params.require(:journal_entry).permit(:user_id, :entry, :score, :comparative, :positive, :negative)
    end

end
