FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials} 
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6, mix_case: true, special_characters: true)}
    password_confirmation {password}
    first_name            {Faker::Name.first_name}
    last_name             {Faker::Name.last_name}            
  end  
end