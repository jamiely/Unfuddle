module Unfuddle
  class Ticket < ActiveResource::Base
    self.prefix = "/tickets"
    def time_entries
      TimeEntry.find :all, :from => "/projects/#{project_id}/tickets/#{id}/time_entries"
    end
  end
end

