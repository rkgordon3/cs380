class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone, :sales_person_id
  has_many :orders
  belongs_to :sales_person
end
