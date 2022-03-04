class Api::V1::SubscriptionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # def index
  #
  #
  # end
  #
  # def destroy
  #
  # end

  def create
    if subscription_params[:frequency] == "weekly" || subscription_params[:frequency] == "monthly" || subscription_params[:frequency] == "yearly" && subscription_params[:status] == "active" || subscription_params[:status] == "cancelled"
      subscription = Subscription.create!(subscription_params)
      if subscription.save
        subscription_saved = 'yes'
      end
    else
      subscription = nil
    end
    if subscription != nil && subscription_saved == 'yes' && subscription_params[:tea_ids].is_a?(Array)
      subscription_teas = subscription_params[:tea_ids].map {|tea_id| SubscriptionTea.create(subscription_id: subscription.id, tea_id: tea_id)}
      render json: SubscriptionSerializer.new(Subscription.find(subscription.id)), status: 201
    else
      render json: { errors: {details: "There was an error creating the subscription" } }, status: 400
    end

  end



  private

  def subscription_params
    params[:price].to_f

    params.permit(:title, :price, :status, :frequency, :customer_id, tea_ids: [])
  end

end
