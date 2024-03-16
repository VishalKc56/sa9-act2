require "spec_helper"
require_relative "../lib/problem4"

RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account = BankAccount.new
        account.deposit(100)
        expect(account.balance).to eq(100)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account = BankAccount.new(100)
        account.withdraw(50)
        expect(account.balance).to eq(50)
      end
  
      it "does not change the balance if insufficient funds" do
        account = BankAccount.new(50)
        account.withdraw(100)
        expect(account.balance).to eq(50)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account = BankAccount.new(100)
        expect(account.balance).to eq(100)
      end
    end
end
  