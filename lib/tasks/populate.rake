namespace :db do
  task populate: :environment do
    return unless Rails.env.development?

    10.times do
      Expense.create description: Faker::Lorem.sentence(2), value: Faker::Number.number(2), date: Faker::Time.between(2.weeks.ago, Time.now)
    end
  end
end
