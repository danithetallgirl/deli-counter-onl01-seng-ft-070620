katz_deli = ["Logan", "Avi", "Spencer"]

def line(katz_deli)
  people_in_line_formatted = []
  
  katz_deli.each_with_index do |person, place_in_line|
    people_in_line_formatted << "#{place_in_line + 1}. #{person}"
  end
  
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    puts "The line is currently: #{people_in_line_formatted.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.length == 0
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end 