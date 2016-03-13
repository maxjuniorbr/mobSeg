class Insurer < ActiveRecord::Base
	has_one :proposal
	has_one :susep
end
