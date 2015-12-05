FactoryGirl.define do
    factory :admin do
        sequence(:email) { |i| "tester#{i}@gmail.com" }
        password "password"
    end
end
