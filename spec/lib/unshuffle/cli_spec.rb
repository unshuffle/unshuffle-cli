require 'spec_helper'

module Unshuffle
  describe CLI, vcr: {cassette_name: 'tasks'} do
    it 'prints a list of tasks' do
      args = ['--token', 'faketoken']
      output = capture(:stdout) { CLI.start(args) }
      output.should include("Example: This task also needs to get done, but only after you've done the ones before it.")
    end

    def capture(stream)
      begin
        stream = stream.to_s
        eval "$#{stream} = StringIO.new"
        yield
        result = eval("$#{stream}").string
      ensure
        eval("$#{stream} = #{stream.upcase}")
      end

      result
    end
  end
end
