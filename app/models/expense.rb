class Expense < ActiveRecord::Base
  acts_as_taggable

  monetize :value_cents

  default_scope -> { order('date DESC') }

  scope :with_description_matching, (lambda do |query|
    where 'description ILIKE ?', "%#{query}%"
  end)

  scope :for_date, (lambda do |date|
    where 'date BETWEEN ? and ?', date.beginning_of_day, date.end_of_day
  end)

  def self.days
    select('date::date as day').map(&:day).compact.uniq.map do |day|
      Day.new(day)
    end
  end
end
