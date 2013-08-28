require 'faker.rb'

# Generate sample activities
File.open("activities.yml", 'w') do |activity|
  5.times do |n|
    activity << "activity_#{n+1}:\n"
    activity << "\t id: #{n+1}\n"
    activity << "\t tutor_id: #{rand(1..50)} \n"
    activity << "\t place_id: #{rand(1..50)} \n"
    activity << "\t category_id: #{rand(0..6)} \n"
    activity << "\t name: Spotkanie #{n+1} \n"
    activity << "\t state:  \n"
    
    activity << "\n"
  end
end

File.open("groups.yml", 'w') do |group|
  
end

# Generating 20 locations
File.open("places.yml", 'w') do |place|
  20.times do |n|  
    place << "lokal_#{n+1} \n"
    place << "\t id: #{n+1} \n"
    place << "\t location: #{%w[pawilon budynek hala].sample} #{n+1} \n \n"
  end
end

# Generating 50 random tutors
File.open("tutors.yml", 'w') do |tutor|
  50.times do |n|
    tutor << "wykladowca_#{n+1} \n"
    tutor << "\t id: #{n+1} \n"
    tutor << "\t name: #{%w[Dr Mgr Prof Inż].sample} #{Faker::Name.first_name} #{Faker::Name.last_name} \n \n"
  end
end
