require 'rubygems'
require 'bundler/setup'

require 'faker'

FIXTURES_DIR = "./fixtures/"

# Create 50 groups
groups = {}.tap do |h|
  (1..50).each do |n|
    h["group_#{n}"] = {
      id:   n,
      name: "#{%w[KrDUIe KrDZZI KrDZGa KrDZIs KrDZRc KrDZAd].sample}#{(0...4).map { |i| rand(1..9) }.join.to_i}",
    }  
  end
end

File.open( FIXTURES_DIR + "groups.yml", "w" ) { |f| f << groups.to_yaml }

# Create 50 tutors
tutors = {}.tap do |h|
  (1..50).each do |n|
    h["tutor_#{n}"] = {
      id:   n,
      name: "#{%w[Dr Mgr Prof Inż].sample} #{Faker::Name.first_name} #{Faker::Name.last_name}",
    }  
  end
end

File.open( FIXTURES_DIR + "tutors.yml", "w" ) { |f| f << tutors.to_yaml }

# Create 20 places
places = {}.tap do |h|
  (1..20).each do |n|
    h["place_#{n}"] = {
      id:       n,
      location: "Paw. #{%w[A B C D E F G].sample} #{rand(1..300)}",
    }  
  end
end

File.open( FIXTURES_DIR + "places.yml", "w" ) { |f| f << places.to_yaml }

# Create 200 activities
activities = {}.tap do |h|
  (1..50).each do |n|
    
    start_at = (Time.now.to_i * rand).to_i
    
    h["activity_#{n}"] = {
      id:           n,
      group_id:     rand(1..50),
      tutor_id:     rand(1..50),
      place_id:     rand(1..20),
      category_id:  rand(1..6),
      name:         "#{%w[KNP Programowanie Matematyka Ekonomia WF].sample}",
      state:        1,
      start_at:     start_at,
      end_at:       start_at + 5400, # 1,5h later
    }  
  end
end

File.open( FIXTURES_DIR + "activities.yml", "w" ) { |f| f << activities.to_yaml }