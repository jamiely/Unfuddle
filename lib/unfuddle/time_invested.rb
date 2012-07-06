module Unfuddle
  class TimeInvested < ActiveResource::Base
    # Returns the total time invested across all groups
    def total
      grouped_results.collect(&:total).collect(&:to_f).sum
    end
    def grouped_results
      if groups.respond_to? :group
        [groups.group].flatten
      else
        []
      end
    end
  end
end

