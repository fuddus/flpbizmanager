class Country < ActiveRecord::Base
	has_many :customers
end
