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
            render json: {entry: '', id: ''}
        end
    end

    def edit
        journal_entry = JournalEntry.find(params[:id])
        journal_entry.update(entry: params[:entry])
        render json: journal_entry
    end

    def destroy
        JournalEntry.find(params[:id]).destroy
    end

    private
    def journal_entry_params
        params.require(:journal_entry).permit(:user_id, :entry)
    end

end
