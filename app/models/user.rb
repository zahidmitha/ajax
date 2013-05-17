class User < ActiveRecord::Base
  attr_accessible :age, :email, :name

  validates :name, :email, :age, :presence => true
end
