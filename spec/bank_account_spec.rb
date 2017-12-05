require_relative '../lib/bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new() }

  describe '#add_transaction' do
    it 'should increase the number of transactions by one' do
      expect { subject.add_transaction }
        .to change { subject.transactions.count }.by(1)
    end
  end

# having removed PrintDetails from the object, need to create two doubles
# one of which will resopnd to 'new' with a parameter and the other which will respond to output_to_console
  describe '#print_statement' do
    it 'should prints statement to console' do
      expect(bank_account.print_statement(PrintDetails)).to output('abc').to_stdout
    end
  end
end
