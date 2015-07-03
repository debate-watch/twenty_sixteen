# TwentySixteen

A source for data about the 2016 United States Presidential election. Includes a "candidates" endpoint.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'twenty_sixteen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twenty_sixteen

> A NOTE ON VERSIONING: The master branch is considered live and may contain newer data than the latest rubygems release version. You may want to bundle install using a git reference. Minor version changes will be made to reflect new data, and major version changes may be made to reflect new or revised functionality, which may or may not be backwards-compatible.

## Usage

### Candidates

List all candidates running for President.

```` rb
candidates = TwentySixteen::Candidate.all #> [{},{},{}]
candidates.each do |candidate|
  # do something crazy
end
````

Filter candidates.

```` rb
reps = Candidate.republican #> [{},{},{}]
dems = Candidate.democrat #> [{},{},{}]
````

Find a specific candidate.

```` rb
hrc = Candidate.find_by_url("https://www.hillaryclinton.com/") #> {}
joe = Candidate.find_by_last_name("Biden") #> {}
````

## Contributing

Edit candidate data in **lib/twenty_sixteen/candidate.rb**. Please add new slogans in sequential order of appearance.

1. Fork it ( https://github.com/debate-watch/twenty_sixteen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
