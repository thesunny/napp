namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [User, Site].each(&:delete_all)
    
    P = Populator
    
    10.times do
      User.create!(
        name: Faker::Name.name,
        company: Faker::Company.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.us_state_abbr,
        zip: Faker::Address.zip_code
      )
    end
    
    users = User.to_a
    users.ran
    
    # Site.populate 20 do |site|
      # site.subdomain = P.words(1..3).gsub(/\s/, '-')
      # site.name = P.words(1..3).titleize
      # site.created_at 2.years.ago..Time.now
      # site.updated_at site.created_at..Time.now
    # end
    
  end
end