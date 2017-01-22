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



  #   create_table "answers", force: :cascade do |t|
  #   t.string   "content"
  #   t.integer  "question_id"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  #   t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  # end

  # create_table "questions", force: :cascade do |t|
  #   t.text     "content"
  #   t.integer  "survey_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["survey_id"], name: "index_questions_on_survey_id", using: :btree
  # end

  # create_table "surveys", force: :cascade do |t|
  #   t.string   "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.integer  "user_id"
  #   t.index ["user_id"], name: "index_surveys_on_user_id", using: :btree
  # end

  # create_table "users", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "email",                  default: "", null: false
  #   t.string   "encrypted_password",     default: "", null: false
  #   t.string   "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.integer  "sign_in_count",          default: 0,  null: false
  #   t.datetime "current_sign_in_at"
  #   t.datetime "last_sign_in_at"
  #   t.inet     "current_sign_in_ip"
  #   t.inet     "last_sign_in_ip"
  #   t.string   "confirmation_token"
  #   t.datetime "confirmed_at"
  #   t.datetime "confirmation_sent_at"
  #   t.string   "unconfirmed_email"
  #   t.datetime "created_at",                          null: false
  #   t.datetime "updated_at",                          null: false
  #   t.integer  "role",                   default: 0
  #   t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  #   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  # end

  # add_foreign_key "surveys", "users"


