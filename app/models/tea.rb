class Tea < ApplicationRecord
  has_many :subscriptionteas
  has_many :subscriptions, through: :subscriptionteas 
end
