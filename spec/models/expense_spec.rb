require 'rails_helper'

describe Expense do
  describe '.with_description_containing' do
    before do
      create :expense, description: 'abc'
      create :expense, description: 'bcd'
      create :expense, description: 'cde'
    end

    let(:results_for) { ->(keywords) { Expense.with_description_matching(keywords) } }

    it 'returns 1 result for "abc"' do
      expect(results_for['abc']).to have(1).item
    end
    it 'returns 2 results for "bc"' do
      expect(results_for['bc']).to have(2).items
    end
    it 'returns 0 results for "z"' do
      expect(results_for['z']).to have(0).items
    end
    it 'returns all results for nil' do
      expect(results_for[nil]).to have(3).items
    end
  end
end
