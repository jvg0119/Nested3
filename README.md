# README

### This is a Rails app that demos the "accepts_nested_attributes_for."  

* Ruby version
	ruby 2.3.1p112 (2016-04-26 revision 54768) 

* Rails version
	Rails 5.0.1

###

* Bootstrap-sass	https://github.com/twbs/bootstrap-sass
* Navbar
* Flash Message
* Welcome homepage, aboutpage
* Add seeds

survey
	| 
	|--	question
			|
			|-- answer

	* survey has_many :questions
	* question belongs_to :survey
	* question has_many :answers
	* answer belongs_to :question 



