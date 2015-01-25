class DaySerializer < ActiveModel::Serializer
  attributes :date, :sum, :expense_count

  has_many :expenses
end
