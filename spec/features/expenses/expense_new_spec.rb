require 'rails_helper'

describe "Visit the new page of 'expenses'", type: :feature do
  before do
    user = FactoryBot.create(:user)
    @group = FactoryBot.create(:group, user:)
    login_as(user)
  end

  it 'should display the title of the page' do
    visit new_group_expense_path(@group)
    expect(page).to have_content 'NEW TRANSACTION'
  end

  it 'should display the correct inputs and styles' do
    visit new_group_expense_path(@group)
    expect(page).to have_css('.category_data_container')
    expect(page).to have_content 'Select categories'
  end 
end  