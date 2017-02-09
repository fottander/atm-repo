require 'account.rb'
require 'pry'

class Person

  attr_accessor :name, :cash, :account

def initialize(attrs = {})
  set_name(attrs[:name])
  @cash = 0
  @account = nil
end

def create_account
  @account = Account.new(owner: self)
end

def deposit(amount)
  @account == nil ? missing_account : deposit_funds(amount)
end


private

def deposit_funds(amount)
  @cash -= amount
  @account.balance += amount
end

def set_name(obj)
   obj == nil ? missing_name : @name = obj
end

def missing_name
  raise 'A name is required'
end

def missing_account
   raise RuntimeError, 'No account present'
end


end
