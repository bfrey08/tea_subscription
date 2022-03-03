require 'rails_helper'

describe "Customer Subscriptions API" do
  before(:each) do
    @customer1 = Customer.create(first_name: "Billy", last_name: "Jimbo", email: "bjimbo6@fake.com", address: "123 Fake Lane, Denver, CO 80209")
    @customer2 = Customer.create(first_name: "John", last_name: "Johnson", email: "jjohnson@fake.com", address: "900 Fake Lane, Denver, CO 80209")
    @tea1 = Tea.create(title: "Chai", description: "smooth and caffeinated", temperature: 130.0, brew_time: 100)
    @tea2 = Tea.create(title: "Oolong", description: "smooth and caffeinated", temperature: 135.0, brew_time: 120)
    @subscription1 = @customer1.subscription.create(title: "Cool subscription!", price: 6.99, status: 0, frequency: 1)
    @subscription2 = @customer2.subscription.create(title: "Cool subscription!", price: 6.99, status: 1, frequency: 0)
    @SubscriptionTea1 = SubscriptionTea.create(tea_id: @tea1.id, subscription_id: @subscription1.id)
    @SubscriptionTea2 = SubscriptionTea.create(tea_id: @tea2.id, subscription_id: @subscription1.id)
    @SubscriptionTea3 = SubscriptionTea.create(tea_id: @tea1.id, subscription_id: @subscription2.id)
    @SubscriptionTea4 = SubscriptionTea.create(tea_id: @tea2.id, subscription_id: @subscription2.id)
  end

  
  describe 'can create a tea subscription for a customer' do
    describe 'happy path' do

    end
    describe 'sad path' do

    end

  end



  describe 'can delete a tea subscription for a customer' do
    describe 'happy path' do

    end
    describe 'sad path' do

    end
  end



  describe 'can show all of a customers tea subscriptions' do
    describe 'happy path' do

    end
    describe 'sad path' do

    end
  end

end
