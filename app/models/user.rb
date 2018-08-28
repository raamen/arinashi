class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :omniauthable

  class << self
    def find_for_oauth(auth)
      user = User.find_by(uid: auth.uid, provider: auth.provider)

      user.presence || User.create(
        uid:      auth.uid,
        provider: auth.provider,
        name:     auth.info.nickname,
        avatar:   auth.info.image,
        password: Devise.friendly_token[0, 20]
      )
    end
  end
end
