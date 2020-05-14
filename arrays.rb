ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

# puts "#{ranks[0]} of #{suits[0]}"
# puts "#{ranks[1]} of #{suits[0]}"
# puts "#{ranks[2]} of #{suits[0]}"
# etc, etc, etc

# for rank in ranks
#   for suit in suits
#     puts "#{rank} of #{suit}"
#   end
# end

deck = []
for rank in ranks
    for suit in suits
        deck << "#{rank} of #{suit}"
    end
end

shuffled_deck = deck.shuffle
hand = shuffled_deck[0, 5]
puts hand.inspect
