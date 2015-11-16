class EatupUser < ActiveRecord::Base
	has_secure_password
	has_many :eatup_tickets
	validates :email, :name, presence: true
	validates :email, uniqueness: true
	validates :password, presence: true, on: :create
end
