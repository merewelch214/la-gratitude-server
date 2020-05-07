class Feeling < ApplicationRecord
    belongs_to :user

    # enum score: [:ecstatic, :happy, :neutral, :sad, :despondent]
end
