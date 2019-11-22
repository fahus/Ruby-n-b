# Ruby-n-b

### User stories:

```
As a new user
So I can choose to view or add listings,
I need to be able to sign up
```
```
As an existing user
So that I can access my account I want to be able to login
```

```
As a space-seeker or space-owner, once I am logged in,
I want to choose to view or add a listings
```

```
As a space-seeker,
So I can find a space to stay,
I would like to see one available space
```

```
As a space-owner,
So I can advertise a space,
I would like be able to list a new space
```
```
As a space-owner,
If I have multiple rooms,
I would like be able to list more than one space
```
```
As a space-owner,
So that I can give more information about the space,
I would like to be able to describe it and set a price per night
```
```
As a space-owner, so that my space is not double booked,
I want to be able to specify what dates my space is available on
```
```
As a space-seeker
So that I can use a space
I want to be able to request to hire a space on a specific date that is available.
```
```
As a space-owner
So I can prepare my space for use
I want to be able to see the requests that have come in
```

```
As a space-seeker, so that I know where I want to stay
I would like to see the requests I've made
```

```
As a space-owner
So that I can approve who stays
I want to be able to approve or deny requests from guests.
```

```
As a space-owner
So that I can approve who stays
I want to be able to approve or deny requests from guests.
```

```
As a space-seeker
So that I know my booking is confirmed
I want to be able to see if my request has been approved or denied
```
```
As a space-owner
So I don't have to manually update availability after a booking
I want booked dates to automatically become unavailable.
```
```
As a space-owner
So that I can choose bookings that suit me
I want to see the space available until I approve the request for hire.
```
### How to run this program:

#### Gems to install:

gem 'capybara'
gem 'launchy'
gem 'pg'
gem 'rspec'
gem 'sinatra'
gem 'rubocop'
gem 'dotenv'
gem 'sendgrid-ruby'

#### Database Setup:
 Follow instructions in initial-db-setup

#### Email API

Create an account with SENDGRID: https://signup.sendgrid.com/


### Sequence diagram:
#### MVP Sequence diagram (Guest can view a listing on a listings board):
![thumbnail_IMG_0047](https://user-images.githubusercontent.com/33905131/69050361-d39cd980-09f9-11ea-9110-f79572ffa4bf.jpg)

#### New HomeOwner can signup to Rubynb:
![Signup HomeOwner Sequence diagram](https://user-images.githubusercontent.com/33905131/69164198-6ff0da00-0ae7-11ea-9d04-aea3248caf40.jpg)
