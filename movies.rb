# Part I - A List of Movies
#

movie_info = "The Princess Bride, Comedy, 7:00PM,
Troll 2, Horror, 7:30PM,
Pet Cemetery, Horror, 8:15PM,
Flight of the Navigator, Adventure, 8:17PM,
Teen Witch, Comedy, 8:20PM,
The Goonies, Comedy, 8:30PM,
Better Off Dead, Comedy, 8:45PM,
Weekend at Bernies, Comedy, 9:00PM,
The Wizard, Adventure, 9:10PM".gsub(/\n/, "").split(",")

now_showing = []
movie_info.each_slice(3) do |movie|
  now_showing << {:title => movie[0],
    :genre => movie[1],
    :start_time => movie[2]}
end
# puts now_showing.inspect

# Create an array of movie objects to store all the information in this list.
# Ensure that each stored instance provides us with a way to access the title,
# genre, and start time of the movie.
class Movie
  def initialize(title, genre, start_time)
    require "time"
      @title = title
      @genre = genre
      @start_time = Time.parse("#{start_time}").strftime("%-l:%M %p")
  end
  attr_reader :title, :genre, :start_time
end
# a = Movie.new("The Princess Bride", :comedy, "7:00PM")
# puts a.title
# puts a.genre
# puts a.start_time

### Part II

# Implement a `showing_after?` instance method that takes a single, string
# argument that represents the time you'll arrive at the theatre. This
# method should return `true` if the start time begins on or after the specified
# time. Again, you'll want to use `Time.parse` to be working with the right data
# type.
#
# Also, we really like comedies. Implement a `comedy?` instance method that
# returns `true` if the movie has the genre `Comedy`, but returns false otherwise.
class Movie
  def initialize(title, genre, start_time)
    require "time"
      @title = title
      @genre = genre
      @start_time = Time.parse("#{start_time}").strftime("%-l:%M %p")
  end
  attr_reader :title, :genre, :start_time

  def showing_after?(arrival_time)
    @arrival_time = Time.parse("#{arrival_time}").strftime("%-l:%M %p")
    if @start_time >= @arrival_time
      puts true
    else @start_time < @arrival_time
      puts false
    end
  end

  def comedy?
    if @genre == :comedy
      puts true
    else
      puts false
    end
  end
end
# showing_after gets messed up if difference is more than 2 hours after showtime
# a = Movie.new("Troll 2", :horror, "7:30pm")
# puts a.showing_after?("3:40pm")

### Part III

# Implement a `showing_between?` instance method that takes two string arguments
# that represents desirable times for when the movie begins. It should return
# `true` if the movie's start time fits between the two specified times.

class Movie
  def initialize(title, genre, start_time)
    require "time"
      @title = title
      @genre = genre
      @start_time = Time.parse("#{start_time}").strftime("%-l:%M %p")
  end
  attr_reader :title, :genre, :start_time

  def showing_between?(time_a, time_b)
    @time_a = Time.parse("#{time_a}").strftime("%-l:%M %p")
    @time_b = Time.parse(time_b).strftime("%-l:%M %p")
    if start_time >= @time_a && start_time < @time_b
      puts true
    else
      puts false
    end
  end
end
# a = Movie.new("Troll 2", :horror, "7:30pm")
# puts a.showing_between?("4:30pm", "7:00pm")
