require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /new' do
    before do
      user = FactoryBot.create(:user)
        FactoryBot.create(:group, user:)
        sign_in user
        get new_group_path
      end
  
    it 'renders the new group template' do
      expect(response).to render_template(:new)
    end

    it 'renders the new template content' do
      expected_result = 'NEW CATEGORY'
      expect(response.body).to include(expected_result)
    end
  end

  describe 'GET /index' do
    before do
      user = FactoryBot.create(:user)
      FactoryBot.create(:group, user:)
      sign_in user
      get groups_path
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
   
    it 'renders the index template with correct content' do
      expected_result = 'CATEGORIES'
      expect(response.body).to include(expected_result)
    end
  end
end