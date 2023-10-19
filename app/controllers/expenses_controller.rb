class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def new
    @author = current_user
    @groups = current_user.groups
    @group = current_user.groups.find(params[:group_id]) 
    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params) 
  
    group = Group.find(expense_params[:group_id])
    expense.groups << group

    if @expense.save
      flash[:success] = 'The Expense was added successfully.'
      redirect_to expenses_path
    else
      flash[:error] = 'Error occurred.'
      render 'new'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, group_ids: [])
  end  
end
