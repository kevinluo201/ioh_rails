class College < ApplicationRecord
  belongs_to :school
  has_many :departments
end
