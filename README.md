# night_at_the_movies

Part I - A List of Movies

Let's catch a movie!

In order to pick the awesomely 80's movie that you want to see, you really need to break down each movie into a Ruby instance. Here's the list of movies playing at the local theatre tonight:

The Princess Bride, Comedy, 7:00PM
Troll 2, Horror, 7:30PM
Pet Cemetery, Horror, 8:15PM
Flight of the Navigator, Adventure, 8:17PM
Teen Witch, Comedy, 8:20PM
The Goonies, Comedy, 8:30PM
Better Off Dead, Comedy, 8:45PM
Weekend at Bernies, Comedy, 9:00PM
The Wizard, Adventure, 9:10PM
Create an array of movie objects to store all the information in this list. Ensure that each stored instance provides us with a way to access the title, genre, and start time of the movie.

A tip: Create a single movie object with the above attributes. Then populate your array.

An additional note: Use Time.parse (docs here) in the constructor and check the docs to make sure you're working with the right data structure for the movie's start time. As you'll see from the docs, you should also require 'time' to use the methods.

require 'time'

time = "7:00PM"
parsed_time = Time.parse(time)
=> 2017-01-20 19:00:00 -0500

parsed_time.strftime("%-l:%M %p")
=> "7:00 PM"
Part II

Implement a showing_after? instance method that takes a single, string argument that represents the time you'll arrive at the theatre. This method should return true if the start time begins on or after the specified time. Again, you'll want to use Time.parse to be working with the right data type.

Also, we really like comedies. Implement a comedy? instance method that returns true if the movie has the genre Comedy, but returns false otherwise.

Part III

Implement a showing_between? instance method that takes two string arguments that represents desirable times for when the movie begins. It should return true if the movie's start time fits between the two specified times.

