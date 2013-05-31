class Local < ActiveRecord::Base
  attr_accessible :address, :distrit, :first_phone, :name, :lat, :lang
  validates_presence_of :name, :distrit, :first_phone, :address 
  validates :name, :uniqueness => true
  
  
end
