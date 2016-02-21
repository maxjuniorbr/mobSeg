class Susep < ActiveRecord::Base
  belongs_to :insurer
  belongs_to :person
end
