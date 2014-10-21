class Expense < ActiveRecord::Base
  acts_as_taggable

  monetize :value_cents
end
