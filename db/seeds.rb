user_amount = 0
post_amount = 20

user_amount.times do
  User.create(  username:        Faker::Internet.user_name,
                email:           Faker::Internet.free_email,
                password_hash:   'pw',
                first_name:      Faker::Name.first_name,
                last_name:       Faker::Name.last_name,
                description:     Faker::Lorem.sentence
                )
end

user_ids = User.all.map { |user| user.id }


post_amount.times do
  Post.create( title:     Faker::Book.title,
               body:      Faker::Lorem.paragraph,
               user_id:   user_ids.sample
               )
end
