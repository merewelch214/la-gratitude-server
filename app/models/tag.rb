class Tag < ApplicationRecord
    belongs_to :user
    has_many :journals, through :jornal_tag
end
