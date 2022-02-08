class User < ActiveRecord::Base
  has_secure_password

  validates :password, length: { in: 8..20 }
end
