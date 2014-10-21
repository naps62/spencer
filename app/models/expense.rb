class Expense < ActiveRecord::Base
  acts_as_taggable

  monetize :value_cents

  scope :with_description_matching, ->(keywords) do
    where 'description ILIKE ?', "%#{keywords}%"
  end
end
