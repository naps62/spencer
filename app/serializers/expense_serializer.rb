class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :value

  def date
    object.date
  end

  def value
    object.value.to_s
  end
end
