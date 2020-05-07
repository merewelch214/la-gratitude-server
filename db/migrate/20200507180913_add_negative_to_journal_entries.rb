class AddNegativeToJournalEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :negative, :float
  end
end
