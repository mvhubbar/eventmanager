class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url
  has_one :exibitor
  has_and_belongs_to_many :meeting
  validates :url, :presence => true
  validates :logo, :presence => true
end
