class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'
  has_many :posts
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  attributes :username, :email
end
