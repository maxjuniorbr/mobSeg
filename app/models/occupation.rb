class Occupation < ActiveRecord::Base
  has_one :person
end
