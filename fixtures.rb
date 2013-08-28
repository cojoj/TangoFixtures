require 'faker.rb'

# Generating 50 sample activities
File.open("activities.yml", 'w') do |activity|
  50.times do |n|
    activity << "activity_#{n+1}:\n"
    activity << "  id:#{n+1}\n"
    activity << "  group_id:#{rand(1..50)}\n"
    activity << "  tutor_id:#{rand(1..50)}\n"
    activity << "  place_id:#{rand(1..20)}\n"
    activity << "  category_id:#{rand(1..6)}\n"
    activity << "  name:#{%w[KNP Programowanie Matematyka Ekonomia WF].sample}\n"
    activity << "  state:1\n"
    activity << "  start_at:#{Time.at(rand * Time.now.to_i).to_i}\n"
    activity << "  end_at:#{Time.at(rand * Time.now.to_i).to_i}\n\n"
  end
end

# Generating 50 groups
File.open("groups.yml", 'w') do |group|
  50.times do |n|
    group << "grupa#{n+1}:\n"
    group << "  id:#{n+1}\n"
    group << "  name:#{%w[KrDUIe KrDZZI KrDZGa KrDZIs KrDZRc KrDZAd].sample}#{(0...4).map { |i| rand(1..9) }.join.to_i}\n\n"
  end
end

# Generating 20 locations
File.open("places.yml", 'w') do |place|
  20.times do |n|  
    place << "lokal_#{n+1}:\n"
    place << "  id:#{n+1}\n"
    place << "  location:Paw. #{%w[A B C D E F G].sample} #{rand(1..300)}\n\n"
  end
end

# Generating 50 random tutors
File.open("tutors.yml", 'w') do |tutor|
  50.times do |n|
    tutor << "wykladowca_#{n+1}:\n"
    tutor << "  id:#{n+1}\n"
    tutor << "  name:#{%w[Dr Mgr Prof Inż].sample} #{Faker::Name.first_name} #{Faker::Name.last_name}\n\n"
  end
end
