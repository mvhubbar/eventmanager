class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :prize
      t.boolean :present_to_win
      t.date :start_date
      t.date :end_date
      t.integer :sponsor_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
