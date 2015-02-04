module Days
  class ExpensesController < ::ApplicationController
    def index
      render json: day.expenses
    end

    private

    def day
      date = Date.parse(params[:day_id])
      @day ||= Day.new(date)
    end
  end
end
