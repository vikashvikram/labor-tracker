class Patient < ActiveRecord::Base
	has_many :medical_histories
	has_many :medical_tests
end
