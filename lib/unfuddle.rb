# Author: Tim Matheson
# Website: http://www.timmatheson.com

module Unfuddle 

    def self.config_path
      "config/unfuddle.yml"
    end

    def self.env
      defined?(RAILS_ENV) ? RAILS_ENV : "test"
    end

    def self.config 
      if File.exists?(config_path)
        return YAML.load(ERB.new(File.read(config_path)).result)["#{env}"]
      else
        raise Exception, "Missing #{config_path} yaml file."
      end
    end
  
    ActiveResource::Base.site     = config["uri"]
    ActiveResource::Base.user     = config["username"]
    ActiveResource::Base.password = config["password"]
    ActiveResource::Base.format   = :xml
end

(Dir.entries(File.dirname(__FILE__) + "/unfuddle/") - [".","..",".git",".svn"]).each{ |f| require File.dirname(__FILE__) + "/unfuddle/" + f }

