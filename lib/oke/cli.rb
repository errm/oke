require "thor"
require "colorize"
require "fileutils"

module Oke
  class CLI < Thor
    desc "init", "prepare your application to run in a container"
    def init
      puts "Detected Rails Application 🛤️"
      puts ""
      puts "Preparing config files 📝"

      create "config/oke/processes.rb", <<~HEREDOC
        # This file contains information about every process your application needs to run

        puma "app" do
          workers 5
          threads 5
        end

        # You can define cron jobs like this:
        #
        # cron "cleanup" do
        #   schedule "@daily"
        #   command "bundle exec rake cleanup"
        # end
        #
        # cron "update counts" do
        #   schedule "*/30 * * * *"
        #   command "bundle exec rake counts:update"
        # end
        #
        # You can manage resque workers like this :
        #
        # resque "wokers" do
        #   queues %w(normal_priority low_priority default)
        #   wokers 6
        # end
        #
        # resque "high_priority" do
        #   queues %w(high_priority)
        #   wokers 2
        # end
      HEREDOC

      create "config/oke/variables.rb", <<~HEREDOC
        # This file contains information about all the environment variables that the application consumes

        env "RAILS_ENV" do
          doc "Chooses the which config to load from config/environment"
          default "production"
        end

        env "DATBASE_URL" do
          doc "URL used to connect to the application database"
          required
          secret
        end

        env "SECRET_KEY_BASE" do
          generate
          secret
        end
      HEREDOC
    end

    no_commands do
      def create(filename, content)
        puts "    create ".colorize(:green) + filename
        FileUtils.mkdir_p File.dirname(filename)
        File.write(filename,content)
      end
    end
  end
end
