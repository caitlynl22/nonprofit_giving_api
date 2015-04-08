User.destroy_all
Organization.destroy_all
OrganizationProfile.destroy_all
Campaign.destroy_all
Cause.destroy_all

users = User.create!([{first_name: 'Bob', last_name: 'Cat', email: 'bob_cat@example.com', password: 'password', image_url: 'www.imgur.com/238461', bio: 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Aenean lacinia bibendum nulla sed consectetur.'}, {first_name: 'Jane', last_name: 'Smith', email: 'jane_smith@example.com', password: 'password', image_url: 'www.imgur.com/1987213', bio: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'}])

arts = Cause.create!(name: 'Arts')
animal_welfare = Cause.create!(name: 'Animal Welfare')
human_services = Cause.create!(name: 'Human Services')
environment = Cause.create!(name: 'Environment')

boston_museum = Organization.create!(org_name: 'Boston Museum', org_email: 'boston_museum@example.com', password: 'password')
craft_museum = Organization.create!(org_name: 'Craft Museum', org_email: 'craft_museum@example.com', password: 'password')
mass_ballet = Organization.create!(org_name: 'Massachusetts Ballet', org_email: 'mass_ballet@example.com', password: 'password')
boston_animal = Organization.create!(org_name: 'Boston Animal Rescue', org_email: 'bar@example.com', password: 'password')
massachusetts_animal = Organization.create!(org_name: 'Massachusetts Animal Shelter', org_email: 'mas@example.com', password: 'password')
sarahs_place = Organization.create!(org_name: "Sarah's Place", org_email: 'sarahs_place@example.com', password: 'password')
childrens_home = Organization.create!(org_name: 'Home for Children', org_email: 'hfc@example.com', password: 'password')
aids_foundation = Organization.create!(org_name: 'Boston AIDS Foundation', org_email: 'baf@example.com', password: 'password')
national_wildlife = Organization.create!(org_name: 'National Wildlife Foundation', org_email: 'nwf@example.com', password: 'password')
green_action = Organization.create!(org_name: 'Green Action Committee', org_email: 'green_action@example.com', password: 'password')

boston_museum_profile = OrganizationProfile.create!(name: 'Boston Museum', mission: 'Aenean lacinia bibendum nulla sed consectetur.', description: 'Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor.', image_url: 'www.imgur.com/974128989', website: 'www.bostonmuseum.org', address: 'Boston, MA', contact: 'Tony Jackson', ein: '00-0000000')
craft_museum_profile = OrganizationProfile.create!(name: 'Craft Museum', mission: 'Donec ullamcorper nulla non metus auctor fringilla. Nullam id dolor id nibh ultricies vehicula ut id elit.', description: 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', image_url: 'www.imgur.com/974128989', website: 'www.craftmuseum.org', address: 'Cambridge, MA', contact: 'Bonnie Parker', ein: '00-0000000')
mass_ballet_profile = OrganizationProfile.create!(name: 'Massachusetts Ballet', mission: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', description: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue.', image_url: 'www.imgur.com/974128989', website: 'www.massballet.org', address: 'Brookline, MA', contact: 'Suzanne Farrell', ein: '00-0000000')
boston_animal_profile = OrganizationProfile.create!(name: 'Boston Animal Rescue', mission: 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus.', description: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Vestibulum id ligula porta felis euismod semper.', image_url: 'www.imgur.com/974128989', website: 'www.bostonanimalrescue.org', address: 'Boston, MA', contact: 'Becky Porter', ein: '00-0000000')
massachusetts_animal_profile = OrganizationProfile.create!(name: 'Massachusetts Animal Shelter', mission: 'Cras justo odio, dapibus ac facilisis in, egestas eget quam.', image_url: 'www.imgur.com/974128989', website: 'www.massanimalshelter.org', address: 'Milton, MA', contact: 'Bob Cat', ein: '00-0000000')
sarahs_place_profile = OrganizationProfile.create!(name: "Sarah's Place", mission: 'Nullam quis risus eget urna mollis ornare vel eu leo.', description: 'Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam.', image_url: 'www.imgur.com/974128989', website: 'www.sarahsplace.org', address: 'Portland, ME', contact: 'Ron Smith', ein: '00-0000000')
childrens_home_profile = OrganizationProfile.create!(name: 'Home for Children', mission: 'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean lacinia bibendum nulla sed consectetur.', website: 'www.homeforchildren.org', address: 'Providence, RI', contact: 'John Jameson', ein: '00-0000000')
aids_foundation_profile = OrganizationProfile.create!(name: 'Boston AIDS Foundation', mission: 'Maecenas faucibus mollis interdum.', description: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', image_url: 'www.imgur.com/974128989', website: 'www.bostonaids.org', address: 'Boston, MA', contact: 'Ron Smith', ein: '00-0000000')
national_wildlife_profile = OrganizationProfile.create!(name: 'National Wildlife Foundation', mission: 'Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', description: 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Vestibulum id ligula porta felis euismod semper.', image_url: 'www.imgur.com/974128989', website: 'www.national_wildlife.org', address: 'New York, NY', contact: 'Toni Hamilton', ein: '00-0000000')
green_action_profile = OrganizationProfile.create!(name: 'Green Action Committee', mission: 'Cras mattis consectetur purus sit amet fermentum.', description: 'Cras justo odio, dapibus ac facilisis in, egestas eget quam.', image_url: 'www.imgur.com/974128989', website: 'www.greenactioncommittee.org', address: 'New York, NY', contact: 'Derek Tremblay', ein: '00-0000000')

boston_museum.organization_profile = boston_museum_profile
craft_museum.organization_profile = craft_museum_profile
mass_ballet.organization_profile = mass_ballet_profile
boston_animal.organization_profile = boston_animal_profile
massachusetts_animal.organization_profile = massachusetts_animal_profile
sarahs_place.organization_profile = sarahs_place_profile
childrens_home.organization_profile = childrens_home_profile
aids_foundation.organization_profile = aids_foundation_profile
national_wildlife.organization_profile = national_wildlife_profile
green_action.organization_profile = green_action_profile

arts.organization_profiles << boston_museum_profile
arts.organization_profiles << craft_museum_profile
arts.organization_profiles << mass_ballet_profile
animal_welfare.organization_profiles << boston_animal_profile
animal_welfare.organization_profiles << massachusetts_animal_profile
human_services.organization_profiles << sarahs_place_profile
human_services.organization_profiles << childrens_home_profile
human_services.organization_profiles << aids_foundation_profile
environment.organization_profiles << national_wildlife_profile
environment.organization_profiles << green_action_profile

american_wing = Campaign.create!(name: 'New American Arts Wing', image_url: 'www.imgur.com/32873hr', goal: 5000000)
renovations = Campaign.create!(name: 'Renovations', description: 'Building revoations', goal: 250000)
curator = Campaign.create!(name: 'New Curatorial Position', description: 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', image_url: 'www.imgur.com/3984724', goal: 500000)
play_yard = Campaign.create!(name: 'New Dog Play Yard', description: 'Putting down artificial grass made for dog parks, new training aids.', image_url: 'www.imgur.com/289478924', goal: 30000)
cages = Campaign.create!(name: 'New Cages', goal: 5000)
toys = Campaign.create!(name: 'Toys for the Children', description: 'Donec ullamcorper nulla non metus auctor fringilla.', goal: 5000)
solar_panels = Campaign.create!(name: 'Solar Panels', goal: 100000)

boston_museum_profile.campaigns << american_wing
boston_museum_profile.campaigns << renovations
craft_museum_profile.campaigns << curator
boston_animal_profile.campaigns << play_yard
boston_animal_profile.campaigns << cages
childrens_home_profile.campaigns << toys
green_action_profile.campaigns << solar_panels






