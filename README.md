# Overview

This is the API for my FHE assignment manager. It integrates with a PostgreSQL database to provide endpoints for data in that database. I created this so making and remembering assignments could be easier for each Monday night.


[Software Demo Video](https://youtu.be/x8kIjcrKiKc)

# Relational Database

I'm using PostgreSQL which is a very powerful relational database.
{Describe the structure (tables) of the relational database that you created.}
The database tables are as follows:
- Meetings
   - Time
   - Location
- People
   - First Name
   - Last Name
   - Birthday
- Assignments
   - Meeting
   - Person
   - Assignment Type
- Assignment Types
   - Title

# Development Environment

I used VSCode along with the Windows terminal to write the code.
The Application is written in Ruby 3.3.0 using the Rails 7.1.3 framework

The following gems were used:
- rack-cors
- pg (for interface with the database)
- active_model_serializers

I used PGAdmin 4 to manage the database

# Useful Websites

- [Official PostgreSQL website](https://www.postgresql.org/)
- [Ruby on Rails website](https://rubyonrails.org/)

# Future Work

- Improve automatic relationships during new assignment creation
- Remove unnecessary required attributes
