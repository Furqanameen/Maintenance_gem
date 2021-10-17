require "my_gem/version"
require "my_gem/railtie" if defined?(Rails::Railtie)

module MyGem
  class Error < StandardError; end
  # Your code goes here...

  class MyCustomClass
    def self.my_test_fun
      val = "This is loaded my test function"
      puts "#{val}"
      return val
    end

  end
end
