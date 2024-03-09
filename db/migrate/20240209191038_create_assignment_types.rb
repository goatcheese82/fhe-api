class CreateAssignmentTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :assignment_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
