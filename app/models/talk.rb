class Talk < ApplicationRecord
  mount_uploader :poster, PosterUploader
  mount_uploader :profile_pic, ProfilePicUploader

  has_many :users, through: :talkers
end
