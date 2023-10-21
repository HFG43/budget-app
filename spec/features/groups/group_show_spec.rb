require 'rails_helper'

describe "Visit the show page of 'groups'", type: :feature do
  before do
    user = FactoryBot.create(:user)
    @group = FactoryBot.create(:group, user:)
    FactoryBot.create(:expense, author: user)
    login_as(user)
  end

  it 'should display the title of the page' do
    visit group_path(@group)
    expect(page).to have_content 'TRANSACTIONS'
  end

  it "should display the 'ADD NEW TRANSACTION' option" do
    visit group_path(@group)
    expect(page).to have_content 'ADD NEW TRANSACTION'
  end

  it "should redirect to new transaction page after clicking on the 'ADD NEW TRANSACTION' button" do
    visit group_path(@group)
    click_link 'ADD NEW TRANSACTION'
    expect(page).to have_current_path(new_group_expense_path(@group))
  end

  it 'should display the list of groups expenses' do
    visit group_path(@group)
    expect(page).to have_content 'TRANSACTION'
    expect(page).to have_content 'TOTAL AMOUNT'
  end
end
