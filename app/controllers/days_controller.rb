class DaysController < ApplicationController
  def index
    render json: Expense.days
  end
end
