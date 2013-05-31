class BandMember < ActiveRecord::Base
  attr_accessible :band_id, :user_id
  belongs_to :band
end
