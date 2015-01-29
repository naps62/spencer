class DaySerializer < ActiveModel::Serializer
  attributes :date, :sum, :expense_count
end
