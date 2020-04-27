class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.references :user
      t.string :entry

      t.timestamps
    end
  end
end
