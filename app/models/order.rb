class Order < ActiveRecord::Base
  belongs_to :customer, :dependent => :delete

  attr_accessible :customer_id, :item, :quantity, :total, :item_id

  validates :customer_id, :presence => :true

  end
