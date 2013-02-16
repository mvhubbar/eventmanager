class Venue < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip
  has_many :meeting
  validates :address, :presence => true
  validates :city, :presence => true
  validates :name, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
end
