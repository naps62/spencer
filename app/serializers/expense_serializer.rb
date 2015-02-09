class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :value, :tag_list

  def value
    object.value.to_s
  end
end
