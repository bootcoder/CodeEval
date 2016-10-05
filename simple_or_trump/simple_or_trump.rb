######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
#####  AllyJoe  ######
######################
##  Alethea Seidl   ##
######################

######################
## Simple || Trump  ##
######################

# INPUT SAMPLE

# AD 2H | H
# KD KH | C
# JH 10S | C

# OUTPUT SAMPLE

# 2H
# KD KH
# JH

#######################
###  PSEUDO   CODE  ###
#######################

# Understand input
#  - Each line has 2 space delimited strings
#  - Each string is represented by face value then suite
#  - After the two strings is a pipe
#  - After the pipe is a single 'trump' suite

# Parse Input
#
#  - Desired Output:

#   - card_hash = {}

#   - {cards: {card1: suit: 'C', value: '10',
#              card2: suit: 'H', value: '9',
#      trump: 'S'}

#  - Break each line up by the pipe
#  - The front set split on space
#  - Store first value in first cards slot
#  - Store second value in second cards slot
#  - Store rear set to trump_card
#  - return card_hash

# Sort Cards
#  - First check if one or both cards contain the trump suit
#   - if yes put into trump_match array
#   - resort trump_match contents
#  - If not trump
#   - Define card_value array
#   - Compare values against card_value array
#   - print card with higher index position



#######################
### Initial Solution ##
#######################

# require 'awesome_print'

# def trump_match
#   match = []
#   match << @card_hash[:cards][0][:string] if @card_hash[:trump] == @card_hash[:cards][0][:suit]
#   match << @card_hash[:cards][1][:string] if @card_hash[:trump] == @card_hash[:cards][1][:suit]
#   # ap match
#   if match.length == 1
#     puts match[0]
#   elsif match.length == 2
#     @card_hash[:trump] = "NoValue"
#     sort_cards
#     return true
#   end
#   nil
# end

# def card_rank(value)

#   value_array = ["2",
#                  "3",
#                  "4",
#                  "5",
#                  "6",
#                  "7",
#                  "8",
#                  "9",
#                  "10",
#                  "J",
#                  "Q",
#                  "K",
#                  "A",]

#   value_array.index(value)
# end

# def sort_cards
#   return trump_match if trump_match

#   first_card_rank = card_rank(@card_hash[:cards][0][:value])
#   second_card_rank = card_rank(@card_hash[:cards][1][:value])

#   if first_card_rank == second_card_rank
#     puts "#{@card_hash[:cards][0][:string]} #{@card_hash[:cards][1][:string]}"
#   elsif first_card_rank > second_card_rank
#     puts @card_hash[:cards][0][:string]
#   else
#     puts @card_hash[:cards][1][:string]
#   end

# end

# def split_card(card_string)
#   return [card_string[0], card_string[1]] if card_string.length == 2
#   [card_string[0..1], card_string[2]] if card_string.length == 3
# end

# File.open('input_sample.txt').each_line do |line|
# # File.open(ARGV[0]).each_line do |line|

#   @card_hash = {}

#   # Split out the different parts
#   line_parts = line.chomp.split('|')

#   # This takes care of the trump card
#   @card_hash[:trump] = line_parts[1][1]

#   # Now to handle the actual cards
#   cards = line_parts[0].strip.split(" ")
#   first_card = split_card(cards[0])
#   second_card = split_card(cards[1])
#   @card_hash[:cards] = [{value: first_card[0],
#                         suit: first_card[1],
#                         string: cards[0]},
#                        {value: second_card[0],
#                         suit: second_card[1],
#                         string: cards[1]}]
#   # Send Parsed input to sort_cards
#   sort_cards

# end


##########################
### Refactored Solution ##
##########################

# require 'awesome_print'

$VALUE_ARRAY = ["2",
                 "3",
                 "4",
                 "5",
                 "6",
                 "7",
                 "8",
                 "9",
                 "10",
                 "J",
                 "Q",
                 "K",
                 "A",]

def card_rank(value)
  $VALUE_ARRAY.index(value)
end

def split_card(card_string)
  return [card_string[0], card_string[1]] if card_string.length == 2
  [card_string[0..1], card_string[2]] if card_string.length == 3
end

def sort_cards

  # If cards are equal value
  if card_rank(@card1[:value]) == card_rank(@card2[:value])
    puts "#{@card1[:string]} #{@card2[:string]}"
  # First card == High Card
  elsif card_rank(@card1[:value]) > card_rank(@card2[:value])
    puts @card1[:string]
  # Second card == high card
  else
    puts @card2[:string]
  end

end

def trump_match
  match = []
  match << @card1[:string] if @trump == @card1[:suit]
  match << @card2[:string] if @trump == @card2[:suit]

  if match.length == 1
    puts match[0]
    true
  elsif match.length == 2
    sort_cards
    true
  else
    false
  end
end

def runner(line)
  # p line
  # Parse raw data
  line_parts = line.chomp.split('|')
  cards = line_parts[0].strip.split(" ")
  first_card = split_card(cards[0])
  second_card = split_card(cards[1])

  # Gather Input
  @trump = line_parts[1][1]
  @card1 = {value: first_card[0], suit: first_card[1], string: cards[0]}
  @card2 = {value: second_card[0], suit: second_card[1], string: cards[1]}

  # SORT!
  return if trump_match
  sort_cards

end

# Import Agent
File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  runner(line)
end
