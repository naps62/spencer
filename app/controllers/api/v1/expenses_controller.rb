module API
  module V1
    class ExpensesController < APIController
      respond_to :json

      def index
        expenses = if params[:keywords]
                     Expense.with_description_matching(params[:keywords])
                   else
                     []
                   end
        respond_with expenses
      end

      def show
        respond_with Expense.find(params[:id])
      end

      def create
        @expense = Expense.new(expense_params)
        if @expense.save
          respond_with @todo
        end
      end

      def update
        @expense = Expense.find(params[:id])
        if @expense.update(expense_params)
          respond_with @todo
        end
      end

      def destroy
        respond_with Expense.destroy(params[:id])
      end

      private

      def expense_params
        params.require(:expense).permit(:value)
      end
    end
  end
end
