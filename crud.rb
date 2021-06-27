movies = {
  test: 9
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
  when "add"
    puts 'Please enter a movie title to add:'
    title = gets.chomp.to_sym
    if movies[title]
      puts 'The movie already exists.'
    else
      puts 'Please rate the movie:'
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "Move #{title.to_s} with rating #{rating} has been added to your collection."
    end
  when "update"
    puts 'Please enter a movie title:'
    title = gets.chomp.to_sym
    if movies[title].nil?
      puts "Movie: '#{title.to_s}' has not been added yet."
    else
      puts 'Please enter a new rating:'
      movies[title] = gets.chomp.to_i
      puts "Updated '#{title.to_s}' rating to #{movies[title]}"
    end
  when "display"
    movies.each { |title, rating| puts "#{title}: #{rating}"}
  when "delete"
    puts 'Please enter a title you would like to remove:'
    title = gets.chomp.to_sym
    if movies[title]
      movies.delete(title)
      puts 'Movie has been removed.'
    else
      puts "There is no movie #{title.to_s} in your collection."
    end
  else
    puts 'Error!'
end
