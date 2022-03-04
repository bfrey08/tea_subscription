class Api::V1::SubscriptionsController < ApplicationController

  def create
    if subscription_params[:frequency] == "weekly" || subscription_params[:frequency] == "monthly" || subscription_params[:frequency] == "yearly" && subscription_params[:status] == "active" || subscription_params[:status] == "cancelled"
      subscription = Subscription.create!(subscription_params)
      if subscription.save
        subscription_saved = 'yes'
      end
    else
      subscription = nil
    end
    if subscription != nil && subscription_saved == 'yes' && tea_ids[:tea_ids].is_a?(Array)
      subscription_teas = tea_ids[:tea_ids].map {|tea_id| SubscriptionTea.create(subscription_id: subscription.id, tea_id: tea_id)}
      render json: SubscriptionSerializer.new(Subscription.find(subscription.id)), status: 201
    else
      render json: { errors: {details: "There was an error creating the subscription" } }, status: 400
    end

  end



  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :customer_id)
  end

  def tea_ids
    params.permit(tea_ids: [])
  end
end
