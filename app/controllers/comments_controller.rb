class CommentsController < ApplicationController
	
	def create
		@comment = Comment.new(comment_params)

			if @comment.save
				redirect_to :back
				flash[notice: 'Comment was successfully created.']
			else
				flash[notice: 'Failed to create comment.']
			end
	end


	private

	def comment_params
		params.require(:comment).permit(:name, :description, :turtle_id)
	end

end
