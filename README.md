## Toady ##

A silly little object that responds to any method.

## Gem Setup ##

```ruby
gem install toady

# Gemfile
group :test do
  gem 'toady'
end
```

## How Do I Use This Thing? ##

```ruby

# Via class methods
Toady.any_method_that_you_like('some', 'arguments')
  => [:any_method_that_you_like, 'some', 'arguments']

Toady.respond_to?(:a_different_method)
  => true

# Via instance methods
toady = Toady.new

toady.flibberty_giblets!
  => [:flibberty_giblets!]

toady.respond_to?(:my_sausages_turned_to_gold)
  => true
```

## Formal Documentation ##

The actual library docs can be read
[over on rubydoc](http://rubydoc.info/gems/toady/frames).

## Contributing ##

Do you use git-flow? I sure do. Please base anything you do off of
[the develop branch](https://github.com/ess/factis/tree/develop).

1. Fork it.
2. Perform some BDD magic. Seriously. Be testing.
3. Submit a pull request.

## So, Uh, Why? ##

More than anything, I needed a general purpose class to help me test
a few pub/sub methodologies for correctness.

## License ##

MIT License. Copyright 2014 Ess
