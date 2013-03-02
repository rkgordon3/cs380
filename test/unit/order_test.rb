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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
