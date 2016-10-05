require 'rspec'
require_relative '../sum_of_primes'

describe "sum_of_primes" do
  it "returns the correct number for a given prime count" do
      expect { sum_of_primes(5) }.to output("28\n").to_stdout
      expect { sum_of_primes(1000) }.to output("3682913\n").to_stdout
  end

  context "#is_prime?" do
    it "returns true when input is prime" do
      expect(is_prime?(5)).to be true
    end
    it "returns false when input is not prime" do
      expect(is_prime?(4)).to be false
    end
  end
end
