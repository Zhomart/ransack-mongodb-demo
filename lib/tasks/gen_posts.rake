desc 'generate posts'
task gen_posts: :environment do
  c = Post.count
  user_ids = User.all.limit(20).map(&:id)
  20.times do |i|
    puts "Creating #{c + i + 1}th post"
    Post.create! title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph,
      rating: rand(10) + 1,
      user_id: user_ids.sample
  end
end
