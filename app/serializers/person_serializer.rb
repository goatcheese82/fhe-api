class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthdate, :assignments

  def assignments
    object.assignments.map do |assignment|
      {id: assignment.id, title: assignment.assignment_type.title}
    end
  end
end
