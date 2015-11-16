class EatupEvent < ActiveRecord::Base
	has_many :eatup_tickets
end
