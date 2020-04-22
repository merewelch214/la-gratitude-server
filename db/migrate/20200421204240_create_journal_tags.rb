class CreateJournalTags < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_tags do |t|
      t.references :journal
      t.references :tag 
      
      t.timestamps
    end
  end
end
