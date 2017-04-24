class Talk < ApplicationRecord
  has_many :users, through: :talkers
end
