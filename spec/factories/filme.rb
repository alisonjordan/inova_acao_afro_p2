FactoryBot.define do
    factory :filme do
        titulo          { Faker::Lorem.name }
        ano_lancamento  { Faker::Date.email.in_date_period(month: nil, year: ::Date.today.year) }
        ator
    end
end