# frozen_string_literal: true

require_relative '../lib/ruby_intro'

describe 'Ruby intro part 1' do
  #This creates the "Example Group" for (ie all the tests associated with) the sum method
  describe '#sum' do 
    #marks the start of all the tests associated with 'returns correct sum'
    it 'returns correct sum [1 point]', points: 1 do
      #Says that after calling sum([1, 2, 3, 4, 5]), the return should be an Integer
      expect(sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer 
      #The return after calling the function should be 15
      expect(sum([1, 2, 3, 4, 5])).to eq(15) 
      #The return after calling the function should be 5
      expect(sum([1, 2, 3, 4, -5])).to eq(5) 
      #The return after calling the function should be -90
      expect(sum([1, 2, 3, 4, -5, 5, -100])).to eq(-90) 
    end #We are done making sure sum returns correct sums when given an array of integers

    #These are the tests for when sum is given an empty array
    it 'works on the empty array [2 points]', points: 2 do 
      #After calling sum([]), there should not be an error raised
      expect { sum([]) }.not_to raise_error
      #Calling sum with an empty array should return 0
      expect(sum([])).to be_zero
    end #done testing sum with an empty array
  end #done testing the sum method

  describe '#max_2_sum' do
    
    it 'returns the correct sum [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      expect(max_2_sum([1, -2, -3, -4, -5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 3])).to eq(6)
    end
    it 'returns zero if array is empty [1 point]', points: 1 do
      expect(max_2_sum([])).to be_zero
    end
    it 'returns value of the element if just one element [1 point]', points: 1 do
      expect(max_2_sum([3])).to eq(3)
    end
  end

  describe '#sum_to_n' do

    it 'returns true when any two elements sum to the second argument [2 points]', points: 2 do
      expect(sum_to_n?([1, 2, 3, 4, 5], 5)).to be true # 2 + 3 = 5
      expect(sum_to_n?([3, 0, 5], 5)).to be true # 0 + 5 = 5
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1, -2, 3, 4, 6, -8], 12)).to be false # no two elements that sum
    end
    it 'returns false for any single element array [1 point]', points: 1 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it 'returns false for an empty array [1 point]', points: 1 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end
