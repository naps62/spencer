class ExpensesController < ApplicationController
  def index
    render json: Expense.with_description_matching(params[:query])
  end

  def show
    render json: Expense.find(params[:id])
  end

  def create
    expense = Expense.new(expense_params)
    return unless expense.save

    render json: expense, location: nil
  end

  def update
    @expense = Expense.find(params[:id])
    return unless @expenses.update(expense_params)

    render json: @todo
  end

  def destroy
    render json: Expense.destroy(params[:id])
  end

  private

  def expense_params
    params.require(:expense).permit(:value, :description, :date, :tag_list)
  end
end
