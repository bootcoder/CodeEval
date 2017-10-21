COSTUME_POINTS = {
  'Vampires:' => 3,
  'Zombies:'  => 4,
  'Witches:'  => 5,
  'Houses:'   => 1
}

def compute_candies(costume_arr)
  total = 0
  costume_arr.each do |costume|
    costume = costume.strip.split(' ')
    if costume[0] == 'Houses:'
      total *= costume[1].to_i
    else
      total += COSTUME_POINTS[costume[0]] * costume[1].to_i
    end
  end
  total /=  costume_arr.length - 1
end

# File.open(ARGV[0]).each_line do |line|
File.open('input.txt').each_line do |line|
  p compute_candies(line.chomp.split(','))
end
