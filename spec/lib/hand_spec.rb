require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["10♦", "9♥"]) }

   describe "#calculate_hand" do
     it "should add the value of two cards together" do
       expect(hand.calculate_hand).to eq(19)
     end

     it "should let face cards be equal to 10" do
       hand = Hand.new(["J♦","K♥"])
       expect(hand.calculate_hand).to eq(20)
       hand = Hand.new(["Q♦","9♥"])
       expect(hand.calculate_hand).to eq(19)
     end

     it "should let an Ace equal 11 if the other card is not an Ace" do
       hand = Hand.new(["A♦","K♥"])
       expect(hand.calculate_hand).to eq(21)
       hand = Hand.new(["A♦","5♥"])
       expect(hand.calculate_hand).to eq(16)
     end

     it "should let one Ace equal 1 and the other equal 11 if two Aces are drawn" do
       hand = Hand.new(["A♦","A♥"])
       expect(hand.calculate_hand).to eq(12)
     end




   end
end
