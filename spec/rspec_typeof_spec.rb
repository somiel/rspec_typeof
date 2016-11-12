require 'spec_helper'

describe RspecTypeof do
  it 'has a version number' do
    expect(RspecTypeof::VERSION).not_to be nil
  end

  it 'matches single data type' do
    expect(true).to typeof(:true)
  end

  it 'mathes any types of expected types list' do
    expect(false).to typeof(:nil_or_false_or_string)
    expect('string').to typeof(:false_or_string_or_fixnum)
  end

  it 'matches boolean as true or false' do
    expect(true).to typeof(:boolean)
  end

  it 'mathes hashes with expected data types' do
    expect({ 'string' => 'str', 'boolean' => true, 'number' => 2}).to match(
      'string'  => typeof(:string_or_nil),
      'boolean' => typeof(:boolean),
      'number'  => typeof(:fixnum)
    )
  end

  it 'negotiates any types of unexpected types list' do
    expect('test').to_not typeof(:fixnum_or_hash_or_boolean)
  end

  it 'mathes array of any types of expected types list' do
    expect([false, 'string']).to typeof(:array_of_nil_or_false_or_string)
  end

  it 'negotiates array of any types of unexpected types list' do
    expect([nil, 'test', {}]).to_not typeof(:array_of_fixnum_or_boolean)
  end

  it 'negotiates when actual value is not an array' do
    expect(false).to_not typeof(:array_of_fixnum_or_boolean)
  end
end
