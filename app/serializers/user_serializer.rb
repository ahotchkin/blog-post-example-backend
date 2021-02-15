class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :first_name, :last_name

  attribute :full_name do |object|
    "#{object.first_name} #{object.last_name}"
  end
end
