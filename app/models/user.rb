class User < ActiveRecord::Base
  attr_accessible :document_number, :document_type, :email, :gender, :last_name, :maternal_name, :name, :password
  has_one :user_rols
end
