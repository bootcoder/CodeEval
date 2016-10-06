require 'rspec'
require_relative '../black_spot'

describe "black_spot" do
  let(:line){'John Sara Tom Susan | 3'}
  it "returns the winning player" do
    expect { black_spot(line) }.to output("Sara\n").to_stdout
  end
end
