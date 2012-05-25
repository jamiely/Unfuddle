module Unfuddle
  class Project < ActiveResource::Base    
    def tickets(params = {})
      params = {:limit => 100, :page => 1}.merge params
      Ticket.find :all, :from => "/projects/#{id}/tickets", :params => params
    end
    
    def self.all
      find(:all, :from => "/projects.xml")
    end
  end
end

