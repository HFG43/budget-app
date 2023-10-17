class ExpensesController < ApplicationController
  before_action :authenticate_user!
end
