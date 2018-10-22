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
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  has_many :passive_relationships,  class_name: 'Relationship',
                                    foreign_key: 'followed_id',
                                    dependent: :destroy

  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
end
