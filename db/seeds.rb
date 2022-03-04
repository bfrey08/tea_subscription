# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@customer1 = Customer.create(first_name: "Billy", last_name: "Jimbo", email: "bjimbo6@fake.com", address: "123 Fake Lane, Denver, CO 80209")
@customer2 = Customer.create(first_name: "John", last_name: "Johnson", email: "jjohnson@fake.com", address: "900 Fake Lane, Denver, CO 80209")
@tea1 = Tea.create(title: "Chai", description: "smooth and caffeinated", temperature: 130.0, brew_time: 100)
@tea2 = Tea.create(title: "Oolong", description: "smooth and caffeinated", temperature: 135.0, brew_time: 120)
@subscription1 = @customer1.subscriptions.create(title: "Cool subscription!", price: 6.99, status: 0, frequency: 1)
@subscription2 = @customer2.subscriptions.create(title: "Cool subscription!", price: 6.99, status: 1, frequency: 0)
@SubscriptionTea1 = SubscriptionTea.create(tea_id: @tea1.id, subscription_id: @subscription1.id)
@SubscriptionTea2 = SubscriptionTea.create(tea_id: @tea2.id, subscription_id: @subscription1.id)
@SubscriptionTea3 = SubscriptionTea.create(tea_id: @tea1.id, subscription_id: @subscription2.id)
@SubscriptionTea4 = SubscriptionTea.create(tea_id: @tea2.id, subscription_id: @subscription2.id)
