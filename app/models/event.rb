class Event < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :title, presence: true
  attr_accessor :date_range

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end

  
  scope :this_month_year, -> { where('extract(year  from start) = ?', Date.today.strftime("%Y-m")) }
  
  scope :upcoming_events, -> { where("start = ? OR start > ?", Date.today, Date.today)  }

  scope :archived_events, -> { where("start < ?", Date.today)  }

  def ArrayDates(array)
      new_array = []
      self.array.each do |arr|
        new_array.push(arr.start.strftime("%d").to_i)
      end
    return new_array
  end

end
