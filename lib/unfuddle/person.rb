module Unfuddle
  class Person < ActiveResource::Base
    self.prefix = "/people"
    def self.all
      find(:all, :from => "/people.xml" )
    end
  end
end
