FactoryBot.define do
  factory :application do
    company_name { Faker::Company.name }
    position_name { Faker::Job.title }
    application_status { rand(0..3) } # Assuming you have enum values like 0 for applied, 1 for interviewing, etc.
    date_applied { Faker::Date.backward(days: 30) }
    interview_date { Faker::Date.forward(days: 10) }
    interview_time { Faker::Time.forward(period: :morning) }
    recruiter_name { Faker::Name.name }
    interview_rounds { Faker::Lorem.sentence }
    job_posting_link { Faker::Internet.url }
    tech_stack { Faker::ProgrammingLanguage.name }
    notes { Faker::Lorem.paragraph }
    min_salary { rand(50000..70000) }
    max_salary { rand(70001..100000) }
    stock_options { [true, false].sample }
    bonus { [true, false].sample }
    association :user
  end
end
