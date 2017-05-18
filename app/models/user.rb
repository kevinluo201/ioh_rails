class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: [:facebook]
  has_and_belongs_to_many :roles
#<<<<<<< HEAD
  has_many :talkers
  has_many :talks, through: :talkers
  # about includes some non-login-relared information
  has_one :about

#=======
  has_many :articles
  has_many :banners
  has_many :events
  has_many :favorites
  has_one :identity
  
#>>>>>>> c7f6d80... add article, banner, college, country, department, dispeline, event, favorite, identity, school models
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end
end
