class User < ApplicationRecord
  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  validates :username, uniqueness: true

end
