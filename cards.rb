require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
    suits = ["clubs", "diamonds", "hearts", "spades"]
    deck = []
    for rank in ranks
        for suit in suits
            deck << "#{rank}_of_#{suit}"
        end
    end
    shuffled_deck = deck.shuffle
    @hand = shuffled_deck[0, 7]
    # @card1 = shuffled_deck[0]
    # @card2 = shuffled_deck[1]
    # @card3 = shuffled_deck[2]
    # @card4 = shuffled_deck[3]
    # @card5 = shuffled_deck[4]
    view 'cards'
end