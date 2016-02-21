class Person < ActiveRecord::Base
  belongs_to :person_type
  belongs_to :metier
  belongs_to :marital_status
  belongs_to :gender
  belongs_to :occupation
  belongs_to :salary_range
end
