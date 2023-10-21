require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @user = User.create(id: 10, name: 'HFG', email: 'xxx@xxx.com', password: '123456password')
    @expense = Expense.create(author: @user, name: 'Bike spend', amount: 100)
  end

  describe 'validatios' do
    it 'should include expense name' do
      expect(@expense.name).to eq('Bike spend')
    end

    it 'should no be valid if it doesnt include name' do
      @expense.name = nil
      expect(@expense).not_to be_valid
    end

    it 'should include a numeric amount' do
      expect(@expense.amount).to eq(100)
    end

    it 'should no be valid if it doesnt include an amount' do
      @expense.amount = nil
      expect(@expense).not_to be_valid
    end
  end
end
