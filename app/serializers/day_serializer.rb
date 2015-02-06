class DaySerializer < ActiveModel::Serializer
  attributes :date, :sum, :expenses_count
end
