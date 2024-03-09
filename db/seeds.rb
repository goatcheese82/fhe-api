# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Person.create!([
   {
   first_name: "Dad",
   last_name: "Smith",
   birthdate: Date.new(1984, 3, 7)
},
{
   first_name: "Mom",
   last_name: "Smith",
   birthdate: Date.new(1992, 2, 23)
},
{
   first_name: "Odin",
   last_name: "Smith",
   birthdate: Date.new(2019, 5, 6)
},
{
   first_name: "Ragnar",
   last_name: "Smith",
   birthdate: Date.new(2022, 3, 29)
}
]) if Person.all.empty?

Meeting.create!([
   {
   time: DateTime.new(2024, 2, 12, 7, 30),
   location: "Home"
}]) if Meeting.all.empty?


AssignmentType.create!([
   {
      title: "Opening Song"
   },
   {
      title: "Opening Prayer"
   },
   {
      title: "Lesson"
   },
   {
      title: "Activity"
   },
   {
      title: "Closing Song"
   },
   {
      title: "Closing Prayer"
   },
]) if AssignmentType.all.empty?

Assignment.create!([
   {
      meeting_id: 1,
      person_id: 1,
      assignment_type_id: 1
   },
   {
      meeting_id: 1,
      person_id: 2,
      assignment_type_id: 2
   },
   {
      meeting_id: 1,
      person_id: 3,
      assignment_type_id: 3
   },
   {
      meeting_id: 1,
      person_id: 4,
      assignment_type_id: 4
   },
   {
      meeting_id: 1,
      person_id: 3,
      assignment_type_id: 5
   },
   {
      meeting_id: 1,
      person_id: 4,
      assignment_type_id: 6
   }
]) if Assignment.all.empty?