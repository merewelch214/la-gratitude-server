class User < ApplicationRecord
    has_many :feelings, dependent: :destroy
    has_many :goals, dependent: :destroy
    has_many :journal_entries, dependent: :destroy
    has_many :wins, dependent: :destroy

    validates :name, uniqueness: true, presence: true
end
