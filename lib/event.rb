require 'pry'
require 'time'

class Event

  attr_accessor :start_date, :duration, :title, :invites

  def initialize(start_date, duration, title)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
  end

  def postpone_24h
    @start_date = start_date + (3600 * 24)
  end

  def end_date
    return @start_date + duration * 60
  end

  def is_past?
    Time.now > end_date 
  end

  def is_future?
    start_date > Time.now
  end

  def is_soon?
    (start_date - Time.now) <= 30*60 
  end
  
  def to_s
    print">"  
    puts "Titre: #{@title}"
    print">" 
    puts "Date de debut: #{@start_date.strftime("%d/%m/%Y %H:%M")}"
    print">" 
    puts "Duree: #{@duration} minutes"
    print">" 
    puts "Invites: #{}"
  end 
end


event_1 = Event.new("2020-01-28 12:30", 120, "Wedding")
event_2 = Event.new("2020-03-01 10:30", 10, "Reunion")

event_1.to_s
