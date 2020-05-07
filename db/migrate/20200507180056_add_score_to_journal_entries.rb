class AddScoreToJournalEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :score, :float
  end
end
