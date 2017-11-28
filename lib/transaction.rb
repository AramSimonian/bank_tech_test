class Transaction
  attr_reader :date, :amount, :balance_after

  def initialize(params = {})
    @date = params[:date] || '01/01/1970'
    @amount = params[:amount] || 0
    @balance_after = (params[:balance] || 0.00) + @amount
  end

  def format_for_output
    return "#{date} || #{abs_amount if amount > 0} || #{abs_amount if amount < 0}|| #{balance_after}"
  end

private

  def abs_amount
    amount.abs
  end
end
