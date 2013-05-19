class Concert < ActiveRecord::Base
  attr_accessible :band_id, :end_date, :local_id, :start_date, :user_id
end
