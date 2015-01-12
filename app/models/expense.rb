class Expense < ActiveRecord::Base
  acts_as_taggable

  monetize :value_cents

  default_scope -> { order('date DESC') }

  scope :with_description_matching, (lambda do |query|
    where 'description ILIKE ?', "%#{query}%"
  end)

  def self.days
    select('DATE(date), SUM(value_cents) AS cents').group('DATE(date)').map do |day_attributes|
      Day.new(day_attributes)
    end
  end
end
