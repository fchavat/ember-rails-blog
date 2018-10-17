Fabricator(:user) do
  username { Faker::Name.name }
  password { Faker::Name.name }
  email { Faker::Internet.email }
end
