user_amount = 4
post_amount = 20
categories = ['Photos','Videos', 'Text']
tags = ['dog', 'apple', 'travel','nofilter','yolo', 'happy']


# USERS
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



# CATEGORIES
categories.each do |category|
  Category.create(name: category)
end

category_ids = Category.all.map { |category| category.id }



# TAGS
tags.each do |tag|
  Tag.create(name: tag)
end

tag_ids = Tag.all.map { |tag| tag.id }



# POSTS
post_amount.times do
  post = Post.create( title:     Faker::Book.title,
                      body:      Faker::Lorem.paragraph,
                      user_id:   user_ids.sample
               )
  # post.categories << Category.all.sample
  # post.tags << Tag.all.sample
end




