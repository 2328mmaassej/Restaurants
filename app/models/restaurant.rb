class Restaurant < ActiveRecord::Base
  attr_accessible :comments, :cuisine, :location, :name, :picture, :website

validates_presence_of :name, :location, :picture, :website

has_many :recommendations

has_many :users, :through => :recommendations 

end
