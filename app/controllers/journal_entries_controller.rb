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
        journal_entry = JournalEntry.find(:created_at => Date.today)
        render json: journal_entry
    end

    private
    def journal_entry_params
        params.require(:journal_entry).permit(:user_id, :entry)
    end

end
