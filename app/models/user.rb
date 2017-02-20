class User < ActiveRecord::Base
  #attr_accessible :description, :instructions, :title, :category_id
  #belongs_to :

  #attr_accessor :title,:description,:instructions
  validates :email, :presence => true
  validates :password, :presence => true
  validates :name, :presence => true
  validates :role, :presence => true
  #validates :category_id, :presence => true
end