# RspecTypeof
[![Gem Version](https://badge.fury.io/rb/rspec_typeof.svg)](https://badge.fury.io/rb/rspec_typeof)
[![CodeClimate](https://codeclimate.com/github/Somiel/rspec_typeof/badges/gpa.svg)](https://codeclimate.com/github/Somiel/rspec_typeof)
[![Build Status](https://travis-ci.org/somiel/rspec_typeof.svg?branch=master)](https://travis-ci.org/somiel/rspec_typeof)

Welcome to rspec_typeof, with this gem you can use "typeof" or "type_of" expectation in your tests for comfortable data format matching of both single data examples and data collections


## Installation

Add this line to your application's Gemfile in the group :development, :test:

```ruby
gem 'rspec_typeof'
```

And then execute:

    $ bundle

## Usage examples


```ruby
expect(true).to typeof(:true) or expect(true).to type_of(:true)

expect(true).to typeof(:string_or_nil_or_true)

expect({string: 'string', fixnum: 2, hash: {}, array: [], custom_class: CustomClass.new}).to match(
  string:       typeof(:string_or_nil),
  fixnum:       typeof(:fixnum_or_nil),
  hash:         typeof(:hash_or_nil_or_string),
  array:        typeof(:array_or_nil),
  custom_class: typeof(:custom_class_or_nil_or_array)
)

expect(['a', 'b', 'c']).to typeof(:array_of_string)

expect(['a', 'b', 1]).to typeof(:array_of_string_or_integer)

expect(1).to typeof(:numeric)
```

## Contributing
Send improvement propositions, bug reports and pull requests on GitHub at https://github.com/Somiel/rspec_typeof.
