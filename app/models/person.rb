class Person < ApplicationRecord
   has_many :assignments, dependent: :destroy
   has_many :meetings, through: :assignments
end
