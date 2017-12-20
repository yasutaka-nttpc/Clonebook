num = 10

num.times do |n|
  name  = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  uid = User.create_unique_string
  user = User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password,
    uid: uid
  )
  title = Faker::Lorem.sentence
  topic_content = Faker::Lorem.sentence
  topic = user.topics.build(title: title, content: topic_content)
  topic.save!

end


(rand(100)+1).times do |i|
  user = User.find( rand(num)+1 )
  comment_content = Faker::Lorem.sentence
  comment = user.comments.build(topic_id: rand(num)+1, content: comment_content)
  comment.save
end