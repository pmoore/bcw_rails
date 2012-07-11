# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.skip_callback(:save, :before, :block_write)

Category.create ({:name => 'Band', :actor_name => 'Band', :actor_name_plural => 'Bands', :api_string => 'band', :active => true})
Category.create ({:name => 'Beauty & Health', :actor_name => 'Beautician', :actor_name_plural => 'Beauticians', :api_string => 'beauty', :active => true})
Category.create ({:name => 'Cake & Bakery', :actor_name => 'Cake & Bakery', :actor_name_plural => 'Cake & Bakeries', :api_string => 'cake', :active => true})
Category.create ({:name => 'Catering', :actor_name => 'Caterer', :actor_name_plural => 'Caterers', :api_string => 'catering', :active => true})
Category.create ({:name => 'Ceremony Music', :actor_name => 'Musician', :actor_name_plural => 'Musicians', :api_string => 'ceremonymusic', :active => true})
Category.create ({:name => 'Ceremony Venue', :actor_name => 'Venue', :actor_name_plural => 'Venues', :api_string => 'venue', :active => true})
Category.create ({:name => 'DJ', :actor_name => 'DJ', :actor_name_plural => 'DJs', :api_string => 'dj', :active => true})
Category.create ({:name => 'Dress & Attire', :actor_name => 'Dress & Attire', :actor_name_plural => 'Dress & Attire', :api_string => 'dress', :active => true})
Category.create ({:name => 'Entertainer', :actor_name => 'Entertainer', :actor_name_plural => 'Entertainers', :api_string => 'entertainer', :active => false})
Category.create ({:name => 'Event Rentals & Photobooths', :actor_name => 'Event Rentals & Photobooths', :actor_name_plural => 'Event Rentals & Photobooths', :api_string => 'rental', :active => true})
Category.create ({:name => 'Favors & Gifts', :actor_name => 'Favors & Gifts', :actor_name_plural => 'Favors & Gifts', :api_string => 'favor', :active => true})
Category.create ({:name => 'Flowers', :actor_name => 'Florist', :actor_name_plural => 'Florists', :api_string => 'florist', :active => true})
Category.create ({:name => 'Invitations', :actor_name => 'Invitations', :actor_name_plural => 'Invitations', :api_string => 'invitation', :active => true})
Category.create ({:name => 'Jewelry', :actor_name => 'Jeweler', :actor_name_plural => 'Jewelers', :api_string => 'jewelry', :active => true})
Category.create ({:name => 'Lighting & Decor', :actor_name => 'Lighting & Decor', :actor_name_plural => 'Lighting & Decor', :api_string => 'eventproduction', :active => true})
Category.create ({:name => 'Limos', :actor_name => 'Limo', :actor_name_plural => 'Limos', :api_string => 'transportation', :active => true})
Category.create ({:name => 'Officiant', :actor_name => 'Officiant', :actor_name_plural => 'Officiants', :api_string => 'officiant', :active => true})
Category.create ({:name => 'Party Supplies', :actor_name => 'Party Supplier', :actor_name_plural => 'Party Suppliers', :api_string => 'partysupplies', :active => false})
Category.create ({:name => 'Photography', :actor_name => 'Photographer', :actor_name_plural => 'Photographers', :api_string => 'photography', :active => true})
Category.create ({:name => 'Planners', :actor_name => 'Planner', :actor_name_plural => 'Planners', :api_string => 'planner', :active => false})
Category.create ({:name => 'Reception Sites', :actor_name => 'Reception Site', :actor_name_plural => 'Reception Sites', :api_string => 'venue', :active => true})
Category.create ({:name => 'Travel', :actor_name => 'Travel Agent', :actor_name_plural => 'Travel Agents', :api_string => 'travel', :active => true})
Category.create ({:name => 'Unique Services', :actor_name => 'Unique Services', :actor_name_plural => 'Unique Services', :api_string => 'other', :active => true})
Category.create ({:name => 'Videography', :actor_name => 'Videographer', :actor_name_plural => 'Videographers', :api_string => 'videography', :active => true})

Category.set_callback(:save, :before, :block_write)