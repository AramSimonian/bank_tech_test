class PrintDetails
  STATEMENT_HEADER = 'date || credit || debit || balance'

  def initialize(transactions)
    output_to_console(transactions)
  end

  def output_to_console(transactions)
    puts STATEMENT_HEADER

    transactions.each do |transaction|
      puts transaction.format_for_output
    end
  end

end
