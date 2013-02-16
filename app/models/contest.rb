class Contest < ActiveRecord::Base
  attr_accessible :end_date, :meeting_id, :present_to_win, :prize, :sponsor_id, :start_date
  belongs_to :meeting
  belongs_to :sponsor
end
