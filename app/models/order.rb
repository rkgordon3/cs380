# == Schema Information
#
# Table name: orders
#
#  id          :integer         not null, primary key
#  quantity    :integer
#  item        :string(255)
#  customer_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  total       :decimal(, )
#  item_id     :integer
#

class Order < ActiveRecord::Base
  belongs_to :customer, :dependent => :delete

  attr_accessible :customer_id, :item, :quantity, :total, :item_id

  validates :customer_id, :presence => :true

  def self.big_orders(size = 500)
  	where("total > ? ", size)
  end

  end
