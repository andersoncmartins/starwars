FactoryBot::define do
  factory :starship do
    trait :blank_name do 
      id { 1 }
      name { "" }
      url { "http://www.example.com/api/1" }
    end

    trait :null_name do 
      id { 2 }
      name { nil }
      url { "http://www.example.com/api/1" }
    end

    trait :with_name_faker do 
      id { 3 }
      name { FFaker::Name.name }
      url { "http://www.example.com/api/1" }
    end

    trait :with_name_not_faker do 
      id { 4 }
      name { "Exemplo" }
      url { "http://www.example.com/api/1" }
    end
  end
end
