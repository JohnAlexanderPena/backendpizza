class User < ApplicationRecord

  has_many :reviews
  has_many :pizzaplaces, through: :reviews

  attr_writer :login

 def login
   @login || self.username
 end

end
