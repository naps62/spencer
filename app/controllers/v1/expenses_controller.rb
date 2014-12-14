class API::V1::ExpensesController < ApplicationController
  respond_to :json

  def index
    respond_with Expense.with_description_matching(params[:query])
  end

  def show
    respond_with Expense.find(params[:id])
  end

  def create
    expense = Expense.new(expense_params)
    return unless expense.save

    respond_with expense, location: nil
  end

  def update
    @expense = Expense.find(params[:id])
    return unless @expenses.update(expense_params)

    respond_with @todo
  end

  def destroy
    respond_with Expense.destroy(params[:id])
  end

  private

  def expense_params
    params.require(:expense).permit(:value, :description)
  end
end
