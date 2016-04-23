class RecommendationsController < ApplicationController
  def index
  end

  def new
    @recommendation = Recommendation.new
  end

  def show
  end

  def create
    # @service = Service.find(params[:service_id])
    @enquiry = @service.enquiries.new(enquiry_params)
    @recommendation.sender_id = current_user.id
    # @recommendation.receiver_id = @service.user.id

    if @recommendation.save
      flash[:success] = "Your recommendation was made successfully."
      redirect_to root_path
    else
      flash[:danger] = "Your enquiry was not sent."
      redirect_to root_path
    end

  def edit
  end

  def update
  end

  def destroy
  end
end
