class Meeting < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :venue_id
  belongs_to :venue
  has_and_belongs_to_many :sponsor
  has_many :exibitor, :through => :sponsor
  validates :name, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :venue_id, :presence => true
end
