class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def new
    @author = current_user
    @groups = @author.groups
    @expense = @author.expenses.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)

    if @expense.save
      group_ids = params[:group_ids]
      group_ids.each do |group_id|
        @expense.groups << Group.find(group_id)
    end
      flash[:success] = 'The Expense was added successfully.'
      redirect_to expenses_path
    else
      flash[:error] = 'Error occurred.'
      render 'new'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end  
end
