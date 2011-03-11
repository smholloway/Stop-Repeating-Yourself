class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  # March 11, 2011 Shayne and Seth decided to use rememberable 
  # (defaults to 2 weeks) instead of timeoutable
  # Documentation says to use one or the other
  # timeoutable is preferable for people using a shared computer,
  # which we will consider not normal right now

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
