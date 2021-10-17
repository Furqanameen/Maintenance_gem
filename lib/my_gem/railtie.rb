# lib/railtie.rb
load 'my_gem'
load 'rails'

module MyGem
  class Railtie < Rails::Railtie
    railtie_name :my_gem

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
      Dir[File.expand_path(File.join(File.dirname(__FILE__),"tasks/*.rake"))].each { |ext| load ext } if defined?(Rake)
    end
  end
end
