class Expense < ActiveRecord::Base
  acts_as_taggable

  before_save :set_date

  monetize :value_cents

  scope :with_description_matching, (lambda do |query|
    where 'description ILIKE ?', "%#{query}%"
  end)

  scope :for_date, (lambda do |date|
    where 'date BETWEEN ? and ?', date.beginning_of_day, date.end_of_day
  end)

  private

  def set_date
    self.date ||= Date.today
  end
end
