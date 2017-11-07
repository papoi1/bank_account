class Bank_account

  HEADER ="Date || incoming || balance"

  def initialize
    @lines = []
    @balance=0
  end

  def deposit(qty, date)
    @balance += qty
    @lines << {qty: qty, date: date, balance: @balance}

    p @lines

  end

  def format_lines
    result= ""

    @lines.reverse.each do |line|
        result += "\n#{line[:date]} || #{line[:qty]}.00 || #{line[:balance]}.00"
    end

    result
  end

  def show_incoming
      HEADER + format_lines
  end

end
