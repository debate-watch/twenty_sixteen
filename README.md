# TwentySixteen

[![Gem Version](https://badge.fury.io/rb/twenty_sixteen.svg)](http://badge.fury.io/rb/twenty_sixteen)

A source for data about the 2016 United States Presidential election. Includes a **candidates** endpoint.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'twenty_sixteen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twenty_sixteen

## Usage

### Client-side

Request the [hosted JSON data file](https://raw.githubusercontent.com/debate-watch/twenty_sixteen/master/lib/twenty_sixteen/candidates.json).

### Server-side

#### Candidates

List all candidates running for President.

```` rb
candidates = TwentySixteen::Candidate.all
````

Filter candidates.

```` rb
dems = TwentySixteen::Candidate.democrat

reps = TwentySixteen::Candidate.republican

indies = TwentySixteen::Candidate.independent

active_dems = TwentySixteen::Candidate.where({:party=>"Democrat",:campaign_status=>"active"})

party_nomination_winners = TwentySixteen::Candidate.party_nominee
````

Find a specific candidate.

```` rb
hrc = TwentySixteen::Candidate.find_by_url("https://www.hillaryclinton.com/")

donald = TwentySixteen::Candidate.find_by_last_name("Trump")
````

## Contributing

Edit candidate data in **lib/twenty_sixteen/candidates.json**. Please add new slogans in sequential order of appearance.

1. Fork it ( https://github.com/debate-watch/twenty_sixteen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
