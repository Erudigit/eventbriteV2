class Event < ApplicationRecord
    belongs_to :user
    has_many :users, through: :attendances
    has_many :attendances

    validates :start_date, presence: true
    validates :duration, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length { in: 20..1000 }
    validates :price, presence: true, length { in: 1..1000}
    validates :location, presence: true


end
