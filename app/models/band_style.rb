class BandStyle < ActiveRecord::Base
  attr_accessible :band_id, :name
  has_many :band_menbers
end
