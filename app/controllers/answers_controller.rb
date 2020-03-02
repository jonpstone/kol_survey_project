class AnswersController < ApplicationController
	before_action :set_answer, except: [:new, :create]
	before_action :set_survey_question

	def new
		@answer = @survey_question.answers.build
	end

	def create
		@answer = Answer.new(answer_params)
		if @answer.save
			redirect_to '/'
		else
			render :new
		end
	end

	def edit; end

	def update
		if @answer.update(answer_params)
			redirect_to '/'
		else
			render :edit
		end
	end

	private

		def set_answer
			@answer = Answer.find(params[:survey_question_id])
		end

		def set_survey_question
			@survey_question = SurveyQuestion.find(params[:survey_question_id])
		end

		def answer_params
			params.require(:answer).permit!
		end
end
