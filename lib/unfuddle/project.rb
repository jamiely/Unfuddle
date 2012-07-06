require 'chronic'

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

    def time_invested(params = {})
      params = {
        :start_date => Chronic.parse('1 week ago').strftime("%Y/%m/%d"),
        :end_date => Time.now.strftime("%Y/%m/%d")
        }.merge(params)
      TimeInvested.find :one, :from => "/projects/#{id}/time_invested", :params => params
    end
  end
end

