class SurveysController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
	before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
  	@surveys = Survey.all
    authorize @surveys
  end

  def show
    authorize @survey
  end

  def new

    @user = current_user
    @survey = @user.surveys.new
    authorize @survey
  	#@survey = Survey.new
    # raise
    3.times do 
      question = @survey.questions.new
      3.times { question.answers.new }
    end
    # raise
  end

  def create
    @user = current_user
    @survey = @user.surveys.new(survey_params)
  	# @survey = Survey.new(survey_params)
    # raise
    authorize @survey
  	if @survey.save
  		flash[:success] = "Your survey was saved successfully!"
  		redirect_to @survey 
  	else
  		render :new
  	end
  end

  def edit
    authorize @survey
  end

  def update
    authorize @survey
  	if @survey.update_attributes(survey_params)
  		flash[:success] = "Your survey was updated successfully!"
  		redirect_to @survey 
  	else
  		render :edit
  	end
  end

  def destroy
    authorize @survey
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





