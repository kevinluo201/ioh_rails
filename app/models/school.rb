class School < ApplicationRecord
  has_many :colleges
  belongs_to :country
end
