class AssociateExpensesWithUsers < ActiveRecord::Migration
  def change
    Expense.delete_all

    add_column :expenses, :user_id, :integer, null: false
  end
end
