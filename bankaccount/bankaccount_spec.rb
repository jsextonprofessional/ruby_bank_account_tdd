require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do 
        @bank_account1 = BankAccount.new
    end

    it 'Has a getter method for retrieving the checking account balance' do
        expect(@bank_account1.checking_balance).to eq(0)
    end 

    it 'Has a getter method that retrieves the total account balance' do
        expect(@bank_account1.total_balance).to eq(0)
    end

    context "Making a withdrawal" do
        it 'Raises an error if user tries to withdraw more money than they have in the account' do
            expect{ @bank_account1.withdraw_from_checking(20) }.to raise_error("Insufficient Funds")
        end
    end

    it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect{ @bank_account1.view_all_accounts }.to raise_error(NoMethodError)
    end

    it 'Raises an error when the user attempts to set the interest rate' do
        expect{ @bank_account1.interest_rate }.to raise_error(NoMethodError)
    end
end