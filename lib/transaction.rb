class Transaction
  attr_reader :date, :amount, :balance_after

  def initialize(params = {})
    @date = params[:date] || '01/01/1970'
    @amount = params[:amount] || 0
    @balance_after = params[:balance] + @amount
  end
end
