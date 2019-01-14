class PagesController < ApplicationController
    
    def home
        @calendar_events = Event.this_month_year    
        @upcomingEvents = @calendar_events.upcoming_events
        @event = @upcomingEvents.take(1).first
        @counter = 0
        @archivedEvents = @calendar_events.archived_events
    end
    
    def about_us
    end
    
    def contact
    end
end
