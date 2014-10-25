class Expense < ActiveRecord::Base
  acts_as_taggable

  monetize :value_cents

  scope :with_description_matching, ->(query) do
    where 'description ILIKE ?', "%#{query}%"
  end
end
