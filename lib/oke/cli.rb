require "thor"
require "colorize"

module Oke
  class CLI < Thor
    desc "init", "prepare your application to run in a container"
    def init
      puts "Detected Rails Application 🛤️"
      puts ""
      puts "Preparing config files 📝"
      create "config/oke"
      create "config/oke/processes.rb"
      create "config/oke/environments.rb"
    end

    no_commands do
      def create(filename)
        puts "    create ".colorize(:green) + filename
      end
    end
  end
end
