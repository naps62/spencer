class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :value, :tag_list

  def date
    object.day.date
  end

  def value
    object.value.to_s
  end
end
