class Player < ActiveRecord::Base
	validates :email, presence: true, format: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :name, presence: true
	validates :username, length: {in: 5..20}, uniqueness: true
	validates :points, numericality: {greater_than_or_equal_to: 0}
	validates :active, inclusion: {in: [true, false]}
end
