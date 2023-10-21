require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @user = User.create(id: 10, name: 'HFG', email: 'xxx@xxx.com', password: '123456password')
    @group = Group.create(user: @user, name: 'My Expenses', icon: 'https://i.pravatar.cc/75?img=02%02')
    @expense = Expense.create(author: @user, name: 'Bike spend', amount: 100)
  end

  describe 'validations' do
    it 'should be valid with valid with expense and group attributes' do
      expense_group = ExpenseGroup.new(expense: @expense, group: @group)
      expect(expense_group).to be_valid
    end

    it 'should not be valid without an expense' do
      expense_group = ExpenseGroup.new(group: @group)
      expect(expense_group).not_to be_valid
    end

    it 'should not be valid without a group' do
      expense_group = ExpenseGroup.new(expense: @expense)
      expect(expense_group).not_to be_valid
    end
  end
end
