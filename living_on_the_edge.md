#BetaInvite

Living on the edge with beta_invite gem

##Instructions

###Installation

Installing from the source:

```
gem 'beta_invite', :github => 'git://github.com/ktkaushik/beta_invite.git'
```

###Setup

There is a new generator which you need to run to install the gem

```ruby
rails generate beta_invite:install
```

This would copy an initializer to your app named as `beta_invite.rb`. You'll find bunch of settings in there.

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

####Where are the invites ?

Well, you can fire up your rails console and you will see that all the tables are under `BetaInvite::BetaInvite`

This should fetch you all the records

```ruby
BetaInvite::BetaInvite.all
```

####Views

___for version >= 0.1.1___

You can generate the views that the gem has into your rails app by this below command

```ruby
rails generate beta_invite:views
```

You may wanna upgrade your gem at this point in time

```ruby
gem update beta_invite
```

Obviously, you can mount it to any route.

__You may wanna restart your server__

###[Roadmap](https://github.com/ktkaushik/beta_invite/wiki/Roadmap)
###[Changelogs](https://github.com/ktkaushik/beta_invite/wiki/Changelog)

##Contributing
```
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
```

Thank you !
