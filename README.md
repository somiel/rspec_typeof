# RspecTypeof
[![Build Status](https://travis-ci.org/Somiel/rspec_typeof.svg?branch=master)](https://travis-ci.org/Somiel/rspec_typeof)

Welcome to rspec_typeof, with this gem you can use "typeof" expectation to your tests for comfortable data format matching


## Installation

Add this line to your application's Gemfile in the group :development, :test:

```ruby
gem 'rspec_typeof'
```

And then execute:

    $ bundle

## Usage examples


```ruby
expect(true).to typeof(:string_or_nil_or_true)
```
### Or
```ruby
expect(true).to typeof(:nil_or_boolean)
```

## Contributing
Send improvement propositions, bug reports and pull requests on GitHub at https://github.com/Somiel/rspec_typeof.
