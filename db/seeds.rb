# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
      name: "Mike",
      email: "mike@example.com",
      password: "password",
      )
user.skip_confirmation!
user.save

1.upto(5) do
  @name = Faker::Name.first_name 
  user = User.new(
        name: @name,
        email: "#{@name}@example.com",
        password: "password",
        )
  user.skip_confirmation!
  user.save
end

users = User.all 

1.upto 20 do |n|
	survey = Survey.create(name: "Rails Survey #{n}", user: users.sample)
	rand(1..3).times do |x| 
		question = survey.questions.create(content: "#{Faker::Hipster.sentence(10, true, 20)}?")
		rand(1..3).times do |y|
			question.answers.create(content: "#{Faker::Hipster.sentence(5, true, 10)}")
		end
	end
end

user = User.new(
      name: "Joe",
      email: "joe@example.com",
      password: "password",
      role: "admin"
      )
user.skip_confirmation!
user.save

puts "*".center(40, "*")
puts
puts "done seeding".center(40)
puts "#{Survey.count} surveys created".center(40)
puts "#{Question.count} questions created".center(40)
puts "#{Answer.count} answers created".center(40)
puts "#{User.where(role: 'regular_user').count} regular users created".center(40)
puts "#{User.where(role: 'admin').count} admin created".center(40)
#puts "#{User.count} answers created".center(40)
puts
puts "*".center(40, "*")

