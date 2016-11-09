require "rspec"

RSpec::Matchers.define :typeof do |expected_types|
  matching_map = {
    'nil'     => 'NilClass',
    'false'   => 'FalseClass',
    'true'    => 'TrueClass',
    'boolean' => ['TrueClass', 'FalseClass']
  }
  types = expected_types
    .to_s
    .split('_or_')
    .uniq
    .map{ |v| matching_map.include?(v) ? matching_map[v] : v.capitalize }
    .flatten
    .uniq

  match do |actual|
    expect(actual).to satisfy do |x|
      types.include?(x.class.name)
    end
  end

  failure_message do |actual|
    "expected that #{actual} would be an instance of #{types.join(' or ')}"
  end
end
