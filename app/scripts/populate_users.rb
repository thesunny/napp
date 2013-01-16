User.delete_all

user = User.create!(
  name: 'sunny',
  company: 'MeZine',
  email: 'thesunny@gmail.com',
  phone: '604-555-1234',
  street: '555 West Hastings St.',
  city: 'Vancouver',
  state: 'BC',
  zip: 'V5B 2M2'
)

Site.delete_all

Site.create!(
  name: 'First Site',
  subdomain: 'first-site',
  owner: user
)
Site.create!(
  name: 'Second Site',
  subdomain: 'second-site',
  owner: user
)
Site.create!(
  name: 'Third Site',
  subdomain: 'third-site',
  owner: user
)
