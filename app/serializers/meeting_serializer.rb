class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :time, :location, :assignments

  def assignments
    as = object.assignments.sort_by {|a| a.assignment_type.id}
    as.map do |assignment|
      ::AssignmentSerializer.new(assignment).attributes
  end
end
end
