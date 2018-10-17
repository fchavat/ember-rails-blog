class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true, uniqueness: true, on: :create
  validates :username, presence: true, uniqueness: true, on: :create
  validates :password, presence: true, on: :create

  devise  :database_authenticatable,
          :registerable,
          :jwt_authenticatable,
          jwt_revocation_strategy: JWTBlacklist

  has_many :posts
end
