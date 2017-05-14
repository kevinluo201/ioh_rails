class Talk < ApplicationRecord
  mount_uploader :poster, PosterUploader
  mount_uploader :profile_pic, ProfilePicUploader

  has_one :talker
  has_one :user, through: :talker
end
