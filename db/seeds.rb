# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto 10 do |n|
	survey = Survey.create(name: "Rails Survey #{n}")
	rand(1..3).times do |x| 
		question = survey.questions.create(content: "#{Faker::Hipster.sentence(10, true, 20)}?")
		rand(1..3).times do |y|
			question.answers.create(content: "#{Faker::Hipster.sentence(5, true, 10)}")
		end
	end
end

puts "*".center(40, "*")
puts
puts "done seeding".center(40)
puts "#{Survey.count} surveys created".center(40)
puts "#{Question.count} questions created".center(40)
puts "#{Answer.count} answers created".center(40)
puts
puts "*".center(40, "*")



  # create_table "answers", force: :cascade do |t|
  #   t.string   "content"
  #   t.integer  "question_id"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  #   t.index ["question_id"], name: "index_answers_on_question_id"
  # end

  # create_table "questions", force: :cascade do |t|
  #   t.text     "content"
  #   t.integer  "survey_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["survey_id"], name: "index_questions_on_survey_id"
  # end

  # create_table "surveys", force: :cascade do |t|
  #   t.string   "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end


