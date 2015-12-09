# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.exists?(email: "admin@projecttracker.com")
  User.create!(email: "admin@projecttracker.com", password: "password",
               admin: true)
end

unless User.exists?(email: "viewer@projecttracker.com")
  User.create!(email: "viewer@projecttracker.com", password: "password")
end

["Sublime Text 3", "Internet Explorer"].each do |name|
  unless Project.exists?(name: name)
    Project.create!(name: name, description: "A sample project about #{name}")
  end
end

unless State.exists?
  State.create(name: "New",     color: "#0066CC")
  State.create(name: "Open",    color: "#008000")
  State.create(name: "Closed",  color: "#990000")
  State.create(name: "Awesome", color: "#663399")
end
