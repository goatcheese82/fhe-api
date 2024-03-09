class Assignment < ApplicationRecord
   belongs_to :meeting
   belongs_to :person
   belongs_to :assignment_type
end
