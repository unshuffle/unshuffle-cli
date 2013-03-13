require 'thor'

module Unshuffle
  class CLI < Thor
    desc 'tasks', 'Lists all your tasks'
    method_options token: :string
    def tasks
      client = Unshuffle::Client.new(options[:token])
      puts client.tasks.map(&:title).join("\n")
    end

    default_task :tasks
  end
end
