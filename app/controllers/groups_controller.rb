class GroupsController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = current_user
    @group = @user.groups.new
  end  
end
