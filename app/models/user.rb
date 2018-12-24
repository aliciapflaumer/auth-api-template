class User < ApplicationRecord
  has_secure_password

  # Basic password validation
  validates_length_of :password, maximum: 20, minimum: 6, allow_nil: true,
    allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  # Make sure username is present and unique
  validates_presence_of     :username
end
