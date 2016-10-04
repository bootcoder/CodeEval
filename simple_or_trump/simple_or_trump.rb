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

##########################
### Refactored Solution ##
##########################


#######################
### Initial Solution ##
#######################

require 'awesome_print'

def sort_cards(input_hash)
  ap input_hash
end

def split_card(card_string)
  return [card_string[0], card_string[1]] if card_string.length == 2
  [card_string[0..1], card_string[2]] if card_string.length == 3
end

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|

  card_hash = {}
  line_parts = line.chomp.split('|')

  # This takes care of the trump card
  card_hash[:trump] = line_parts[1][1]

  # Now to handle the actual cards
  cards = line_parts[0].strip.split(" ")
  first_card = split_card(cards[0])
  second_card = split_card(cards[1])
  card_hash[:cards] = [{value: first_card[0],
                        suit: first_card[1]},
                       {value: second_card[0],
                        suit: second_card[1]}]
  # Send Parsed input to sort_cards
  sort_cards(card_hash)

end


