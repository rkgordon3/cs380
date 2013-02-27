class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone
  has_many :orders
end
