RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl.lint
  end
end

FactoryGirl.define do
  factory :expense do
    description 'lorem'
  end
end
