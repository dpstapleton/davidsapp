FactoryGirl.define do

	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do

	email 
    password "testingtesting"
    first_name "Testi"
    last_name "Testman"
    admin false

  end

  factory :admin, class: User do
		email
		password "admin1234"
		first_name "Admin"
		last_name "Example"
		admin true
		
	end


end