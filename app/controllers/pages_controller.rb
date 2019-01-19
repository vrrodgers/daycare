class PagesController < ApplicationController
    
    def home
        @calendar_events = Event.this_month_year    
        @upcomingEvents = ArrayDates(@calendar_events.upcoming_events)
        @event = @calendar_events.upcoming_events.take(1).first
        @counter = 0
        @archivedEvents = ArrayDates(@calendar_events.archived_events)
    end
    
    def about_us
        @teams = Team.all
    end
    
    def contact
    end

    def gallery
        @gallery = Gallery.all
    end
    
    private

    def ArrayDates(array)
      new_array = []
      array.each do |arr|
        new_array.push(arr.start.strftime("%d").to_s)
      end
    return new_array
  end
end
