# BalancedTernaryInteger

Conversion integers from/to balanced ternary and decimal numeral system. For -1 symbol 'T' is used.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'balanced_ternary_integer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install balanced_ternary_integer

## Usage

Conversion from decimal into ternary:
```ruby
BalancedTernaryInteger.from_int(11) # => '11T'
```

Conversion from ternary into decimal:
```ruby
BalancedTernaryInteger.to_int('TT') # => -4
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Saugardas/balanced_ternary_integer.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
