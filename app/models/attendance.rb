class Attendance < ApplicationRecord
    belongs_to :attendance, optional: true
    belongs_to :user, optional: true
end
