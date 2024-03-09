class CreateAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :assignments do |t|
      t.belongs_to :meeting
      t.belongs_to :person
      t.belongs_to :assignment_type
      t.timestamps
    end
  end
end
