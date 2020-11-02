class User < ApplicationRecord
    has_many :events, through: :attendances
end
