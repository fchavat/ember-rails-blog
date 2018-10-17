class SerializablePost < JSONAPI::Serializable::Resource
  type 'posts'
  belongs_to :user
  attributes :title, :content
end
