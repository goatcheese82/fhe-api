class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :person, :assignment_type

  def person
    p = object.person
    ::PersonSerializer.new(p).attributes
  end

  def assignment_type
    ::AssignmentTypeSerializer.new(object.assignment_type).attributes
  end
end
