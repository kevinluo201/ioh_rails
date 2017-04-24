# every record in Talker represent a Talk,
# the purpose is remain the simple of Talk
# and only record school-related info here
# another model JobTalker can record all Talk related to Jobs
class Talker < ApplicationRecord
  # lets see if these need to create other tables
  Degree = %(bachelor master phd)
  Identity = %(regular oversea_eastasia oversea professor)

  after_initialize :set_defaults, unless: :persisted?

  belongs_to :user
  belongs_to :talk

  private

  def set_defaults
    self.degree  ||= 'bachelor'
    self.identity ||= 'regular'
  end
end
