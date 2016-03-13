class Susep < ActiveRecord::Base
  belongs_to :insurer
  belongs_to :person
  has_one :proposal

  def insurer_with_value
    "#{insurer.name} - #{value}"
  end
end
