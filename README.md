#BetaInvite

A simple gem to help you build your __beta_invite__ page up and running in no time

##Instructions

###Installation

```ruby
gem install beta_invite
```

or with the use of __Bundler__, you can just write `beta_invite` in your `Gemfile` and run `bundle` command in your CLI.

###Setup

####Migrations
The setup is very primary as of now. Once installed, you will need to copy the migrations by running this command

```ruby
rake beta_invite:install:migrations
```

Run the migrations

```ruby
rake db:migrate
```

The above migrations would create a `beta_invites` table in your app

####Mount
Now mount the `BetaInvite` engine by going into your `routes.rb` file and adding the below line

```ruby
mount BetaInvite::Engine, at: '/'
```

####Views


You can generate the views that the gem has into your rails app by this below command

```ruby
rails generate beta_invite:views
```

___for version >= 0.1.1___

You may wanna upgrade your gem at this point in time

```ruby
gem update beta_invite
```

Obviously, you can mount it to any route.

__You may wanna restart your server__

##Contributing
```
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
```

Thank you !
