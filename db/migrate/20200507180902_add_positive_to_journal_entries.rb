class AddPositiveToJournalEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :positive, :float
  end
end
