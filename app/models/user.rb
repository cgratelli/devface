class User < ActiveRecord::Base
  attr_accessible :document_number, :document_type, :email, :gender, :last_name, :maternal_name, :name, :password
  has_one :user_rols

  validates_presence_of :document_number, :document_type, :email, :gender, :last_name, :maternal_name, :name, :password

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
  		user.name = auth.info.name
  		user.oauth_token = auth.credentials.token
  		user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  		user.save!
  	end
  end
end
