require 'spec_helper'

module Unshuffle
  describe Client, vcr: { cassette_name: 'tasks'} do
    subject { Client.new('faketoken') }

    describe '#tasks' do
      it 'lists all tasks' do
        tasks = subject.tasks
        tasks.should have(8).tasks
        tasks.last.should eq(
                            "priority" => 1,
                            "state" => "scheduled",
                            "title" => "Example: This task also needs to get done, but only after you've done the ones before it."
                          )
      end
    end
  end
end
