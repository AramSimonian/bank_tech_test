require_relative '../lib/bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new() }

  describe '#add_transaction' do
    it 'should increase the number of transactions by one' do
      expect { subject.add_transaction }
        .to change { subject.transactions.count }.by(1)
    end
  end
end
