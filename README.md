# Tea Subscription Service
A take-home coding challenge with less than 8 hours of work. The concept is to set up a backend Rails API for a tea-subscription service.

[Prompt](https://mod4.turing.edu/projects/take_home/take_home_be)

### Schema
![Schema](/lib/assets/pics/schema_pic.png)

### Endpoints
Cancel a customers tea subscription:
- ` DELETE http://localhost:3000/api/v1/customers/:id/subscriptions/:id `

Subscribe a customer to a tea subscription:
- ` POST http://localhost:3000/api/v1/customers/:id/subscriptions `

See all of a customers subscriptions (active and canceled)
 - ` GET http://localhost:3000/api/v1/customers/:id/subscriptions `


### Project Board

[github project board](https://github.com/users/bfrey08/projects/1/views/1)

### Additional Gems

  - [rspec-rails](https://github.com/rspec/rspec-rails)
  - [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
  - [jsonapi-serializer](https://github.com/jsonapi-serializer/jsonapi-serializer)


### JSON Contract
Endpoint:
```
POST http://localhost:3000/api/v1/customers/:id/subscriptions
```
Query Params:
```
title:Neat subscription!
price:6.99
status:active
frequency:weekly
tea_ids[]:1
tea_ids[]:2

```
Succesful response:

```
{
    "data": {
        "id": "3",
        "type": "subscription",
        "attributes": {
            "title": "Neat subscription!",
            "price": "6.99",
            "status": "active",
            "frequency": "weekly"
        }
    }
}

```

Error:
```
{
    "errors": {
        "details": "There was an error creating the subscription"
    }
}
```
