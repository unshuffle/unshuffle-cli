require 'spec_helper'

describe 'bin/unshuffle' do
  it 'prints hello world out' do
    `bin/unshuffle`.strip.should == 'hello world'
  end
end
