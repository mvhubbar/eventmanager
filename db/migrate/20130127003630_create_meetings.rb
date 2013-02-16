class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :venue_id

      t.timestamps
    end
  end
end
