require 'rails_helper'

describe API::V1::ExpensesController, type: :controller do
  render_views

  describe '#index' do
    before do
      4.times { create :expense }

      xhr :get, :index, format: :json, keywords: keywords
    end

    context 'when the search finds results' do
      let(:keywords) { 'baked' }

      it 'returns 200' do
        expect(response.status).to eq(200)
      end
      it 'returns two results' do
        expect(results.size).to eq(2)
      end
      it 'includes "Baked Potato w/ Cheese"' do
        expect(results.map { |result| result["name"] }).to include 'Baked Potato w/ Cheese'
      end
    end

    context "when the search doesn't find results" do
      let(:keywords) { 'foo' }
      it 'should return no results' do
        expect(results).to be_empty
      end
    end
  end
end
