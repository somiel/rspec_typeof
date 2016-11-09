require 'spec_helper'

describe RspecTypeof do
  it 'has a version number' do
    expect(RspecTypeof::VERSION).not_to be nil
  end

  it 'mathes any types of expected types list' do
    expect(false).to typeof(:nil_or_false_or_string)
    expect('string').to typeof(:false_or_string_or_fixnum)
  end

  it 'matches boolean as true or false' do
    expect(true).to typeof(:fixnum_or_boolean)
  end

  it 'negotiates any types of unexpected types list' do
    expect("test").to_not typeof(:fixnum_or_hash_or_boolean)
  end
end
