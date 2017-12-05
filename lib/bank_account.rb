class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def add_transaction(transaction)
    transactions.unshift(transaction)
  end

# removed the direct reference to PrintDetails
# and referred to an abstraction 'printer'
# 'printer' needs to accept an argument and respond to output_to_console
  def print_statement(printer)
    pd = printer.new(transactions)
    pd.output_to_console
  end
end
