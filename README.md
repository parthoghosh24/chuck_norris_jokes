# Chuck Norris Jokes

Another Chuck Norris gem which allows you to fetch and integrate chuck norris jokes from [api.chucknorris.io](https://api.chucknorris.io/). It has a 'name' mode via which you can replace 'Chuck Norris' with 'name' (not recommended unless you are an equivalent legend say like Rajnikanth).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chuck_norris_jokes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chuck_norris_jokes

## Usage

To instantiate:

```ruby
   require 'chuck_norris_jokes'
   chuck_norris = ChuckNorrisJokes::ChuckNorris.new
```
You can instantiate with some name too:

```ruby
   require 'chuck_norris_jokes'
   chuck_norris = ChuckNorrisJokes::ChuckNorris.new "Rajnikanth"
```

Then we can do the following

```ruby

   # This will fetch a random joke
   chuck_norris.tell_me_a_joke_now

   # This will fetch list of joke categories
   chuck_norris.show_me_joke_categories

   # This will fetch a random joke from specific category
   chuck_norris.tell_me_a_joke_now_from_category "#{cat}"

   # This will perform a full text search with a specific term
   chuck_norris.give_me_lot_of_jokes_having "#{term}"

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chuck_norris_jokes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ChuckNorrisJokes project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/parthoghosh24/chuck_norris_jokes/blob/master/CODE_OF_CONDUCT.md).
