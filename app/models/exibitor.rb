class Exibitor < ActiveRecord::Base
  attr_accessible :description, :exibitor_category_id, :name, :sponsor_id
  belongs_to :exibitor_category
  belongs_to :sponsor
  has_many :meeting, :through => :sponsor
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exibitor_category_id, :presence => true
  validates :sponsor_id, :presence => true
end
