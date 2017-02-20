class Accounts < ActiveRecord::Base
  #attr_accessible :account_id, :balance, :status, :userid
  #belongs_to : user

  #attr_accessor :title,:description,:instructions
  validates :account_id, :presence => true
  validates :balance, :presence => true
  validates :status, :presence => true
  validates :userid, :presence => true
  #validates :category_id, :presence => true
end
