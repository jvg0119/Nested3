# README

### This is a Rails app that demos the "accepts_nested_attributes_for."  

* Ruby version
	ruby 2.3.1p112 (2016-04-26 revision 54768) 

* Rails version
	Rails 5.0.1

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

* Add nested_form gem 	https://github.com/ryanb/nested_form 
	* Change form_for to nested_form_for
	* Add link_to_add in the form
	* Add link_to_remove in the form

* Add devise user 	https://github.com/plataformatec/devise
	* Home 	https://github.com/plataformatec/devise/wiki 
	* Devise Tutorials Home	https://github.com/danweller18/devise/wiki
	* Permit additional parameters	https://github.com/plataformatec/devise#strong-parameters

* Add pundit 	https://github.com/elabs/pundit 

* Add Administrate gem 	
	* anouncing administrate 	https://robots.thoughtbot.com/announcing-administrate
	* administrate 	https://github.com/thoughtbot/administrate
	* getting started with administrate 	http://administrate-prototype.herokuapp.com/getting_started





