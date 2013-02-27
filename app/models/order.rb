class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :items

  attr_accessible :customer_id, :item, :quantity, :total, :item_id

  end
