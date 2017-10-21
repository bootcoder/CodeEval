
require 'prime'

File.open(ARGV[0]).each_line do |line|
# File.open('input.txt').each_line do |line|
  count = 0
  low, high = line.chomp.split(',').map(&:to_i)
  Prime.each do |prime|
    break if prime > high
    next if prime < low
    count += 1
  end
  puts count
end
