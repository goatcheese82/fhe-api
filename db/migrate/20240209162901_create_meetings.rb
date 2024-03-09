class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.datetime :time
      t.string :location
      t.boolean :current

      t.timestamps
    end
  end
end
