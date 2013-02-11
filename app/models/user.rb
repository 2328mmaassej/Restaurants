class User < ActiveRecord::Base
  attr_accessible :name, :recommend

validates_presence_of :name

has_many :recommendations

has_many :restaurants, :through => :recommendations

end
