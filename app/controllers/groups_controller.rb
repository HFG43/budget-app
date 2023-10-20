class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @groups = @user.groups
    @group_amount = 0
  end

  def show
    @path_description = 'TRANSACTIONS'
    @user = current_user
    @group = Group.find(params[:id])
    @expenses = @group.expenses.order(created_at: :desc)
    @group_amount = 0
  end

  def new
    @user = current_user
    @group = @user.groups.new
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
      flash[:success] = 'The Category was added successfuly.'
      redirect_to groups_path
    else
      flash[:error] = 'Error occured.'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
