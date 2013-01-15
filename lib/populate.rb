class Populate
  
  class << self

    def users
      User.delete_all
      10.times do
        User.create!(
          name: Faker::Name.name,
          company: Faker::Company.name,
          email: Faker::Internet.email,
          phone: Faker::PhoneNumber.phone_number,
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          # state: Faker::Address.us_state_abbr,
          zip: Faker::Address.zip_code
        )
      end
    end
    
    def sites
      #users = User.find(:all).sample(1)
      User.each do |user|
        rand(1..3) do
          Site.create!(
            subdomain: Populator.word,
          )
        end
      end
    end
    
    
  end
  
end