puts "Favorite color in parent starts as: #{ENV['FAVORITE_COLOR']}"

fork do
  puts "Favorite color in child starts as: #{ENV['FAVORITE_COLOR']}"
  ENV["FAVORITE_COLOR"] = 'red'
  puts "Favorite color in child ends as: #{ENV['FAVORITE_COLOR']}"
end

puts "Favorite color in parent ends as: #{ENV['FAVORITE_COLOR']}"