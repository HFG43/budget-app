require 'rails_helper'

describe "Visit the index page of 'groups'", type: :feature do
  before do
    user = FactoryBot.create(:user)
    @group = FactoryBot.create(:group, user:)
    login_as(user)
  end

  it 'should display the title of the page' do
    visit groups_path
    expect(page).to have_content 'CATEGORIES'
  end

  it "should display the 'ADD NEW CATEGORY' option" do
    visit groups_path
    expect(page).to have_content 'ADD NEW CATEGORY'
  end

  it "should redirect to new category page after clicking on the 'ADD NEW CATEGORY' button" do
    visit groups_path
    click_link 'ADD NEW CATEGORY'
    expect(page).to have_current_path(new_group_path)
  end

  it 'should display the list of groups created' do
    visit groups_path
    expect(page).to have_css('.category_container')
    expect(page).to have_content 'Bike Spends'
  end 

  it 'should redirect to group show after clicking on the a category' do
    visit groups_path
    click_link 'Bike Spends'
    expect(page).to have_current_path(group_path(@group))
  end
end  