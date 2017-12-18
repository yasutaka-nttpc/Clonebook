100.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: "name#{n}"
               )
end

n = 1
while n <= 10
  Faker::Config.locale = :ja
  name = Faker::Name.name
  sentence = Faker::Lorem.sentence
  Topic.create(
    title: name,
    content: sentence,
    user_id: n
  )
  n = n + 1
end