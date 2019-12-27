class SugarRecord < ApplicationRecord
    belongs_to :user
    has_one :comment
end
