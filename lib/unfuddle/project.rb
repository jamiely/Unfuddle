module Unfuddle
  class Project < ActiveResource::Base    
    def tickets(params = {})
      params = {:limit => 100, :page => 1}.merge params
      Ticket.find :all, :from => "/projects/#{id}/tickets", :params => params
    end

    def self.all
      find(:all, :from => "/projects.xml")
    end

    # Note that the entries are requested separately, because to my knowledge they
    # cannot be requested together. This will obviously take awhile.
    def time_entries
      tickets.collect(&:time_entries).reduce(&:concat)
    end
  end
end

