class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    binding.pry
    render json: current_user.expenses.with_description_matching(params[:query])
  end

  def show
    render json: current_user.expenses.where(id: params[:id]).first
  end

  def create
    expense = current_user.expenses.build(expense_params)
    return unless expense.save

    render json: expense, location: nil
  end

  def update
    @expense = current_user.expenses.where(id: params[:id]).first
    return unless @expenses.update(expense_params)

    render json: @todo
  end

  def destroy
    render json: current_user.expenses.where(id: params[:id]).first.destroy
  end

  private

  def expense_params
    params.require(:expense).permit(:value, :description, :date, :tag_list)
  end
end
