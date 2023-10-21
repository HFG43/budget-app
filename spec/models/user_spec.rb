require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(id: 10, name: 'HFG', email: 'xxx@xxx.com', password: '123456@password')
  end

  describe 'validations' do
    it 'should include User name' do
      expect(@user.name).to eq('HFG')
    end

    it 'should not be valid if it dont include name' do
      @user.name = nil
      expect(@user).not_to be_valid
    end

    it 'should include email' do
      expect(@user.email).to eq('xxx@xxx.com')
    end

    it 'should not be valid without email' do
      @user.email = nil
      expect(@user).not_to be_valid
    end

    it 'should include password' do
      expect(@user.password).to eq('123456@password')
    end
  end
end
