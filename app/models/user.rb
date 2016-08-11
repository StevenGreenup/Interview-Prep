class User < ApplicationRecord
  has_many :descomps
  has_many :resumes
  has_many :bosses
  has_secure_password
    validates :password, presence: true
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
