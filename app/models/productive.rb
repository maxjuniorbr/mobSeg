class Productive < ActiveRecord::Base
  has_one :person


  validates :name, presence: true
  validates :short_name, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
  validates :gender_id, presence: true
end
