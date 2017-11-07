require "./bank_account"

describe "Bank Account" do
  context "" do
    it "shows incoming money" do
      #Arrange
      account = Bank_account.new
      account.deposit(1000, '01/04/2014')
      account.deposit(500, '02/04/2014')

      #Act
      account_table = account.show_incoming

      #Assert
      expect(account_table).to eq("Date || incoming || balance
02/04/2014 || 500.00 || 1500.00
01/04/2014 || 1000.00 || 1000.00")
    end
  end


  it "incoming money 2" do
    #Arrange
    account = Bank_account.new
    account.deposit(1000, '01/04/2014')
    account.deposit(30, '02/04/2014')

    #Act
    account_table = account.show_incoming

    #Assert
    expect(account_table).to eq("Date || incoming || balance
02/04/2014 || 30.00 || 1030.00
01/04/2014 || 1000.00 || 1000.00")
  end
end
