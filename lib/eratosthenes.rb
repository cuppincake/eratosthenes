require "eratosthenes/version"

module Eratosthenes
  class Primes
    def self.upto(limit)
      nums = (2..limit).to_a
      nums.each do |num|
        mult = 2
        while num * mult <= limit do
          nums.delete(num * mult)
          mult += 1
        end
      end
    end
  end
end
