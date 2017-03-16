class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
	def index
	@results = Question.all
  end

  def show
  end

  def new
  		@question = Question.new
	end
  def create
		@answer=Question.new(params.require(:question).permit(:firstName,:lastName,:email,:score,:comment))
		if(@answer.save)
			redirect_to :questions
		else
			render action: 'new'
		end

	end
  def update
		respond_to do |format|
		      if @question.update(params.require(:question).permit(:firstName,:lastName,:email,:score,:comment))

			format.html {
			flash[:notice] ='Survey was updated.'
			redirect_to :questions
		  }
		      else
		         render action: 'edit'

		      end
		   end
  end

  def destroy
	respond_to do |format|
		format.html {
				 if @question.destroy
					flash[:notice] ='Survey was Deleted.'

			   else
			        flash[:notice] ='Survey Could Not Be Deleted.'
				 end
			   redirect_to :questions
		}

	 end
  end

	private
	def set_question
		@question =Question.find(params[:id])
	end

end
