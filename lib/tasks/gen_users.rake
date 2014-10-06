desc 'generate users'
task gen_users: :environment do
  c = User.count
  10.times do |i|
    puts "Creating #{c + i + 1}th user"
    User.create! first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email
  end
end
