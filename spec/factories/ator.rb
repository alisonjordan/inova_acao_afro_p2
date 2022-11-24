FactoryBot.define do
    factory :ator do
        nome            { Faker::Lorem.name }
        email           { Faker::Internet.email }
        ano_nascimento  { Faker::Date.email.in_date_period(month: nil, year: ::Date.today.year) }
    end
end