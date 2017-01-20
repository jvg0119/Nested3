class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
  	@surveys = Survey.all
  end

  def show
  end

  def new
  	@survey = Survey.new
    3.times do 
      question = @survey.questions.new
      3.times { question.answers.new }
    end
  end

  def create
  	@survey = Survey.new(survey_params)
  	if @survey.save
  		flash[:success] = "Your survey was saved successfully!"
  		redirect_to @survey 
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @survey.update_attributes(survey_params)
  		flash[:success] = "Your survey was updated successfully!"
  		redirect_to @survey 
  	else
  		render :edit
  	end
  end

  def destroy
  	@survey.destroy
  		flash[:success] = "Your survey was deleted!"
  		redirect_to root_url   	
  end

  private
  def set_survey 
  	@survey = Survey.find(params[:id])
  end

  def survey_params
  	params.require(:survey).permit(:name, questions_attributes: [:id, :content, :_destroy, 
            answers_attributes: [:id, :content, :_destroy]])
  end
end





