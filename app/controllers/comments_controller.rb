class CommentsController < ApplicationController

  def new
      @recommendation = Recommendation.find(params[:recommendation_id])
      @comment = Comment.new
  end

  def create
      @recommendation = Recommendation.find(params[:recommendation_id])

      @comment = Comment.new(comment_params)
      @comment.recommendation_id = @recommendation.id
      @comment.user_id = current_user.id
      
      if @comment.save
          flash[:success] = "Your comment was made successfully"
          redirect_to :back
      else

          flash[:danger] = "Your comment was not sent"
          redirect_to :back
      end
  end

  private
  def comment_params
      params.require(:comment).permit(:comment, :recommendation_id, :user_id)
  end

end

