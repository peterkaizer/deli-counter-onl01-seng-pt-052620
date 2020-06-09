def line(line_deli)
  if line_deli.size == 0
     puts "The line is currently empty."
  else 
     empty_line = line_deli.map.with_index(1) {|customer, number| "#{number}. #{customer}"}
     puts "The line is currently: #{empty_line.join(' ')}"
  end
end

def take_a_number(queue_deli, customer)
    queue_deli << customer
    puts "Welcome, #{customer}. You are number #{queue_deli.length} in line."
end

def now_serving(line_deli)
  if line_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line_deli.shift}."
  end
end