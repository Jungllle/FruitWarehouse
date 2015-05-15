# FruitWarehouse

This idea is from [FontAwesome](http://github.com/FontAwesome)!

Fruit Warehouse is a set of fruit icons. This gem support Ruby projects and Ruby on Rails projects with Compass, Sprocket, etc.

## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Compass](#b-compass-without-rails) not on Rails.

### a. Ruby on Rails

In your Gemfile include:

```ruby
gem 'fruit_warehouse'
```

And then execute:

```sh
bundle install
```

Import the FruitWarehouse styles in your `app/assets/stylesheets/application.css.scss`. The `fruit_warehouse-sprockets` file
includes the sprockets assets helper Sass functions used for finding the proper path to the font file.

```scss
@import "fruit_warehouse-sprockets";
@import "fruit_warehouse";
```

#### Rails Helper usage

In your view:

```ruby
fruit('flag')
# => <i class="fa fa-flag"></i>
```

```ruby
fruit('flag', '', class: 'strong')
# => <i class="fa fa-flag strong"></i>
```

```ruby
fruit('flag', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa fa-flag strong"></i> Font Awesome
```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper

### b. Compass without Rails

Install the gem

```sh
gem install fruit_warehouse
```

If you have an existing Compass project:

```ruby
# config.rb:
require 'fruit_warehouse'
```

Import the FruitWarehouse styles

```scss
@import "fruit_warehouse-compass";
@import "fruit_warehouse";
```

## Contributing

1. Fork it ( https://github.com/jungllle/fruit_warehouse/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
