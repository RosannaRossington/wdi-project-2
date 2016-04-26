class RecommendationsController < ApplicationController
  def index
  end

  def new
    @recommendation = Recommendation.new
  end
 
  def show
    @recommendation = Recommendation.find(params[:id])
    @sender = User.find(@recommendation.sender_id)
    # change comment user_id to User username
    # @commenter = User.find(@comment.user_id)
    
  end
  # Set up a controller action for this rec form, so that an rec can be created and assigned to a sender, a receiver and a product url correctly. 
 
  def create

      @recommendation = Recommendation.new(recommendation_params)
      @recommendation.sender_id = current_user.id
      @recommendation.receiver_id = User.find_by_username(params[:receiver_username]).id
    

      if @recommendation.save
          flash[:success] = "Your rec was made successfully"
          redirect_to home_path
      else
          flash[:danger] = "Your rec was not sent"
          redirect_to home_path
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def inbox
  end

  def outbox
  end

  private
  def recommendation_params
      params.require(:recommendation).permit(:message, :product_url, :receiver_username)
  end
end
