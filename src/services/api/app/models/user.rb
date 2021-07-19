class User < ApplicationRecord
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

   has_secure_password
   validates :username, presence: true
   validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
   has_many :recipes

end
