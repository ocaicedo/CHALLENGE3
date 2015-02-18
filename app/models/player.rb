class Player < ActiveRecord::Base
	validates :email, presence: true email_format: { message: "no es email valido" }
	validates :name, presence: true
	validates :username, uniqueness: true length {:within 5..20}
	validates :points, :greater_than_or_equal_to {0}
end
