require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new

MoneyRails.configure do |config|
  config.default_currency = :eur
end
