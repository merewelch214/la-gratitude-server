class AddComparativeToJournalEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :comparative, :float
  end
end
