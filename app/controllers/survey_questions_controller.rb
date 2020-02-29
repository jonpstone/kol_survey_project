class SurveyQuestionsController < ApplicationController
	before_action :set_survey_question, only: [:edit, :update]
	before_action :set_survey

	def index
		@survey_questions = @survey.survey_questions
	end

	def new
		@survey_question = @survey.survey_questions.build
	end

	def create
		@survey_question = SurveyQuestion.new(survey_question_params)
		if @survey_question.save
			redirect_to survey_survey_questions_path(@survey)
		else
			render :new
		end
	end

	def edit; end

	def update
		if @survey_question.update(survey_question_params)
			redirect_to survey_survey_questions_path(@survey)
		else
			render :edit
		end
	end

	private

		def set_survey
			@survey = Survey.find(params[:survey_id])
		end

		def set_survey_question
			@survey_question = @survey.survey_question.find(params[:id])
		end

		def survey_question_params
			params.require(:survey_question).permit(
        :question_text, :fixed_question, :survey_id
      )
		end
end
