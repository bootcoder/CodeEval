require 'rspec'
require_relative '../simple_or_trump'


describe "it works" do

  it "runs a test" do
    expect(true).to be true
  end

end


describe "simple_or_trump" do

  context "trump cards" do

    let(:trump_line){"5D 3S | S\n"}
    let(:non_trump_line){"5D 3H | S\n"}
    let(:high_trump_line){"5D 3H | D\n"}
    let(:high_trumpX2_line){"5D 3D | D\n"}

    it "returns a valid trump card" do
      expect { runner(trump_line) }.to output("3S\n").to_stdout
    end
    it "ignores an invalid trump card" do
      expect { runner(non_trump_line) }.to output("5D\n").to_stdout
    end
    it "returns a valid trump card when high card" do
      expect { runner(high_trump_line) }.to output("5D\n").to_stdout
    end
    it "returns a high card when both are trumps" do
      expect { runner(high_trumpX2_line) }.to output("5D\n").to_stdout
    end

  end

  context "regular sort" do

    let(:high_card_line){"5D 3S | H\n"}
    let(:equal_card_line){"5D 5S | H\n"}

    it "returns the high card" do
      expect { runner(high_card_line) }.to output("5D\n").to_stdout
    end
    it "returns both when equal" do
      expect { runner(equal_card_line) }.to output("5D 5S\n").to_stdout
    end
    it "does not return low card" do
      expect { runner(high_card_line) }.to_not output("3S\n").to_stdout
    end

  end

  # context "#runner" do

  #   let(:card_line){"5D 3S | H\n"}

  #   it "assigns the correct trump value" do
  #     expect { runner(card_line) }.to_not output("3S\n").to_stdout
  #   end
  #   it "assigns the correct value to card1" do

  #   end
  #   it "assigns the correct value to card2" do

  #   end
  # end

  context "#split_card" do

    let(:card){"2D"}
    let(:long_card){"10D"}
    let(:face_card){"JD"}

    it "returns correct short array" do
      expect(split_card(card)).to match_array(['2','D'])
    end
    it "returns correct long array" do
      expect(split_card(long_card)).to match_array ['10','D']
    end
    it "returns correct face card array" do
      expect(split_card(face_card)).to match_array ['J', 'D']
    end

  end

  context "#card_rank" do

    let(:ace_value){"A"}
    let(:deuce_value){"2"}

    it "returns the correct index rank (Ace)" do
      expect(card_rank(ace_value)).to eq 12
    end

    it "returns the correct index rank (deuce)" do
      expect(card_rank(deuce_value)).to eq 0
    end

  end

end


