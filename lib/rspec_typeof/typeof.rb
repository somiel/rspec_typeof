require "rspec"

RSpec::Matchers.define :typeof do |expected_types|
  extend RspecTypeof::Helpers

  matching_map = {
    'nil'     => 'NilClass',
    'false'   => 'FalseClass',
    'true'    => 'TrueClass',
    'boolean' => ['TrueClass', 'FalseClass']
  }.freeze

  types = expected_types
    .to_s
    .gsub(/^array_of_/, '')
    .split('_or_')
    .map{ |v| matching_map.include?(v) ? matching_map[v] : camelcase(v) }
    .flatten
    .uniq

  match do |actual|
    expect(actual).to satisfy do |x|
      if expected_types.to_s.scan(/^array_of_\w+/).length > 0
        return false unless x.is_a? Array

        x.all? { |el|  types.include?(el.class.name) }
      else
        types.include?(x.class.name)
      end
    end
  end

  failure_message do |actual|
    "expected that #{actual} would be an instance of #{types.join(' or ')}"
  end
end
