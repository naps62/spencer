namespace :db do
  task populate: :environment do
    return unless Rails.env.development?

    10.times do
      Expense.create description: Faker::Lorem.sentence(2)
    end
  end
end
