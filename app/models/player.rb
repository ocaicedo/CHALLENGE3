class Player < ActiveRecord::Base
	validates :email, presence: true, format: /@/
	validates :name, presence: true
	validates :username, length: {in: 5..20}, uniqueness: true
	validates :points, numericality: {greater_than_or_equal_to: 0}
end
