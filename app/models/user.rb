class User < ApplicationRecord
  # Basic password validation
  # validates_length_of :password, maximum: 20, minimum: 6, allow_nil: true,
  #   allow_blank: false
  # validates_confirmation_of :password, allow_nil: true, allow_blank: false

  #Validations
   validates_presence_of :username, :password

   #encrypt password
   has_secure_password
end
