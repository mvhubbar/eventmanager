class CreateMeetingsSponsors < ActiveRecord::Migration
  def self.up
    create_table :meetings_sponsors, :id => false do |t|
      t.references :meeting
      t.references :sponsor
    end
  end

  def self.down
    drop_table :meetings_sponsors
  end
end
