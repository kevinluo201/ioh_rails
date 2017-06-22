class Role < ApplicationRecord
  Roles = %w(admin ioh_core ioh_member speaker organization regular)
  has_and_belongs_to_many :users

  class << self
    Roles.each do |role|
      define_method :"#{role}" do
        where(name: role).first
      end
    end
  end
end
