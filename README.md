#BetaInvite

A simple gem to help you build your __beta_invite__ page up and running in no time

* [Features](#features)
* [Installation](#installation)
* [Setup](#setup)
	- [Initializer](#initializer)
	- [Migrations](#migrations)
	- [Mount](#mount)
* [API](#where-are-the-invites-)
* [Views](#views)

## For version >= 1.0.0

##Features

* Quick and easy setup of __Beta Invite__ engine and its functionality
* Random Token stored and generated with each invite
* Customize and modify all the views and email templates
* Send emails as notification when someone requests for an invite to the admins
* Send __Thank you__ emails which can easily be customized by the developer in future.


##Installation

```ruby
gem install beta_invite
```

or with the use of __Bundler__, you can just write `beta_invite` in your `Gemfile` and run `bundle` command in your CLI.

Installing from the source:

```
gem 'beta_invite', :github => 'git://github.com/ktkaushik/beta_invite.git'
```

If you are living on the edge with `beta_invite` gem, then you should refer [this](https://github.com/ktkaushik/beta_invite/blob/master/living_on_the_edge.md)

##Setup

###Initializer

The `beta_invite` gem has a beta_invite installer. First step to setup is to run the __install generator__ 

```ruby
rails g beta_invite:install
```

This would create an __initializer__ named `beta_invite.rb`

###Migrations
The setup is very primary as of now. Once installed, you will need to copy the migrations by running this command

```ruby
rake beta_invite:install:migrations
```

Run the migrations

```ruby
rake db:migrate
```

The above migrations would create a `beta_invites` table in your app


###Mount
Now mount the `BetaInvite` engine by going into your `routes.rb` file and adding the below line

```ruby
mount BetaInvite::Engine, at: '/'
```

##Where are the invites ?

Well, you can fire up your rails console and you will see that all the tables are under `BetaInvite::BetaInvite`

This should fetch you all the records

```ruby
BetaInvite::BetaInvite.all
```

##Views

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


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/ktkaushik/beta_invite/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

