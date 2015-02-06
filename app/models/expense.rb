class Expense < ActiveRecord::Base
  belongs_to :day, counter_cache: true
  acts_as_taggable

  before_save :set_date_and_day

  monetize :value_cents

  scope :with_description_matching, (lambda do |query|
    where 'description ILIKE ?', "%#{query}%"
  end)

  scope :for_date, (lambda do |date|
    where 'date BETWEEN ? and ?', date.beginning_of_day, date.end_of_day
  end)

  private

  def set_date_and_day
    return if day_id.present?

    self.date ||= Date.today
    update day: Day.for_date(self.date)
  end
end
