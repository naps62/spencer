class Day
  include ActiveModel::SerializerSupport

  def initialize(date)
    @date = date
  end

  attr_accessor :date

  def expenses
    Expense.for_date(date)
  end

  def expense_count
    expenses.count
  end

  def sum
    expenses.map(&:value).sum.to_f
  end
end
