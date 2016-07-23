class User < ApplicationRecord
  has_many :resumes
  has_many :bosses
  has_secure_password
    validates :email, presence: true
      validates :password, presence: true
end
