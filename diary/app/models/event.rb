# The validation for each column and the relationship to user is done here

class Event <ApplicationRecord
belongs_to :user

validates :name, presence: true
validates :venue, presence: true
validates :date, presence: true
validates :description, presence: true
end