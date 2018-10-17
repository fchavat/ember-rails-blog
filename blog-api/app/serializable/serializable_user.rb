class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'
  has_many :posts
  attributes :username, :email
end
