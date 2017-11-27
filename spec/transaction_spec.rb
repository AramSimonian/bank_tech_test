require_relative '../lib/transaction'

describe Transaction do
  subject(:transaction) { described_class.new({date: '25/06/1971', amount: 10, balance: 0 } ) }

  describe '#initialize' do
    it 'should have a balance_after equal to the amount' do
      puts subject.balance_after
      expect(subject.balance_after).to eq(10)
    end
  end
end
