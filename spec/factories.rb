FactoryGirl.define do
    factory :link do
        name "Google"
        url "google.com"
        created DateTime.current
    end
end