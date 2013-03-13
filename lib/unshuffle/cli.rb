require 'thor'

module Unshuffle
  class CLI < Thor
    desc 'hello', 'prints hello world'
    def hello
      puts "hello world"
    end

    default_task :hello
  end
end
