class JournalEntry < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :journal_tag
    
end
