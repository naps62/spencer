class Day < ActiveRecord::Base
  has_many :expenses, dependent: :destroy

  def self.for_date(date)
    where(date: date.to_date.beginning_of_day).first_or_create
  end

  def sum
    expenses.map(&:value).sum.to_f
  end
end
