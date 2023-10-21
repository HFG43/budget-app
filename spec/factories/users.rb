FactoryBot.define do
    factory :user do
      id { rand(1..100_000) }
      name { 'HFG' }
      email { "hfg#{id*rand(1..100)}@hfg.com" }
      password { 'hfghfg' }
      confirmed_at { Time.now }
    end
  end