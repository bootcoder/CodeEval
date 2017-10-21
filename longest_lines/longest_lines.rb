
strings = []

File.open(ARGV[0]).each_line do |line|
# File.open('input.txt').each_line do |line|
  strings << line.chomp
end

number_of_strings = strings.shift.to_i
strings.sort_by! {|str| str.length }
number_of_strings.times do
  puts strings.pop
end
