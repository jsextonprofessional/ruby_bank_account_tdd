require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do 
        @bank_account1 = BankAccount.new
    end

    it 'Has a getter method for retrieving the checking account balance' do
        @bank_account1.view_checking_balance
        expect(@bank_account1.view_checking_balance).to eq(nil)
    end 

    it 'Has a getter method that retrieves the total account balance' do
        expect(@bank_account1.view_total_balance).to eq(nil)
    end

    it 'Raises an error if a user tries to withdraw more money than they have in the account' do
        expect(@bank_account1.withdraw_from_checking(20)).to eq("Insufficient Funds")
    end

    it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect(@bank_account1.self.view_all_accounts). eq(nil)
    end

    it 'Raises an error when the user attempts to set the interest rate' do
        expect(@bank_account1.)
    end
end