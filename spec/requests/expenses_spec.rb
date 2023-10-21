require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  describe 'GET /new' do
    before do
      @user = FactoryBot.create(:user)
      @group = FactoryBot.create(:group, user: @user)
      sign_in @user
      get new_group_expense_path(@group)
    end

    it 'should work' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the correct template' do
      expect(response).to render_template(:new)
    end

    it 'new template should render correctly' do
      expected_result_title = 'ADD NEW TRANSACTION'
      expect(response.body).to include(expected_result_title)
    end
  end
end
