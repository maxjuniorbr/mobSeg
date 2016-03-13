class Person < ActiveRecord::Base
  belongs_to :productive
  belongs_to :person_type
  belongs_to :metier
  belongs_to :marital_status
  belongs_to :gender
  belongs_to :occupation
  belongs_to :salary_range
  has_one :susep

  validates :name, presence: true
  validates :person_type_id, presence: true
  validates :birth, presence: true, if: "person_type_id == 1"
  validates :marital_status_id, presence: true, if: "person_type_id == 1"
  validates :gender_id, presence: true, if: "person_type_id == 1"
end
