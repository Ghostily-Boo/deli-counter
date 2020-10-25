katz_deli = []

def line(deli)
    if deli.size == 0
        puts "The line is currently empty."
    elsif deli.size == 1
        puts "The line is currently: 1. #{deli.first}."
    else
        line = "The line is currently:"
        deli.each do |name|
            place = deli.index(name) + 1
            line = line << " #{place}. #{name}"
        end
        puts line
    end
end

def take_a_number(deli, new)
    deli << new
    place = deli.index(new) + 1
    puts "Welcome, #{new}. You are number #{place} in line."
end

def now_serving(deli)
    if deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.first}."
        deli.shift
        deli
    end
end
