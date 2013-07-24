desc "This task is called by the Heroku scheduler to update data from meetup.com"
task :update_meetups => :environment do
  puts "getting data from meetup.com..."
  Meetup.update
  puts "done"
end
