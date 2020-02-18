class User < ApplicationRecord
  validations :username, presence: true
  validations :email, presence: true
  validations :password, presence: true
end
