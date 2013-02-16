class ExibitorCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :exibitor
  validates :name, :presence => true
end
