class User < ApplicationRecord
    
    has_secure_password

    has_many :feelings, dependent: :destroy
    has_many :goals, dependent: :destroy
    has_many :journal_entries, dependent: :destroy
    has_many :wins, dependent: :destroy

    validates :username, uniqueness: true, presence: true
end
