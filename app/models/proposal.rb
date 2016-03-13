class Proposal < ActiveRecord::Base
  belongs_to :person
  belongs_to :susep
  belongs_to :insurer
  belongs_to :branch
  belongs_to :operation
  belongs_to :discount_technical_type
  belongs_to :payment_type
end
