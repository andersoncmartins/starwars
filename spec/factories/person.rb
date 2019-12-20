FactoryBot::define do
  factory :person do
    trait :blank_name do 
      id { 1 }
      name { "" }
      mass { FFaker::Random.rand(0..1000) }
      birth_year { FFaker::Random.rand(1000..3000) }
      url { "http://www.example.com/api/1" }
    end

    trait :null_name do 
      id { 2 }
      name { "" }
      mass { FFaker::Random.rand(0..1000) }
      birth_year { "30/11/1980" }
      url { "http://www.example.com/api/1" }
    end

    trait :with_name_faker do 
      id { 3 }
      name { FFaker::Name.name }
      mass { FFaker::Random.rand(0..1000) }
      birth_year { "1976" }
      url { "http://www.example.com/api/1" }
    end

    trait :with_name_no_faker do 
      id { 4 }
      name { "Pessoa 1" }
      mass { FFaker::Random.rand(0..1000) }
      birth_year { "1981" }
      url { "http://www.example.com/api/1" }
    end

    trait :without_mass do 
      id { 5 }
      name { "Pessoa 1" }
      mass { nil }
      birth_year { "1980" }
      url { "http://www.example.com/api/1" }
    end

    trait :without_birth_year do 
      id { 6 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { nil }
      url { "http://www.example.com/api/1" }
    end

    trait :without_planet do 
      id { 7 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { "1960" }
      url { "http://www.example.com/api/1" }
      planet { nil }
    end

    trait :with_planet do 
      id { 8 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { "1960" }
      url { "http://www.example.com/api/1" }
      planet { build(:planet, :with_name_faker) }
    end

    trait :without_specie do 
      id { 9 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { "1960" }
      url { "http://www.example.com/api/1" }
      specie { nil }
    end

    trait :with_specie do 
      id { 10 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { "1960" }
      url { "http://www.example.com/api/1" }
      specie { build(:specie, :with_name_faker) }
    end

    trait :complete do 
      id { 10 }
      name { "Pessoa 1" }
      mass { "80" }
      birth_year { "1960" }
      url { "http://www.example.com/api/1" }
      specie { build(:specie, :with_name_faker) }
      planet { build(:planet, :with_name_faker) }
      starships { [] }
    end
  end

end