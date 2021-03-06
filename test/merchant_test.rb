require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant.rb'

class MerchantTest < Minitest::Test
  def test_it_exists
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, merchant
  end

  def test_it_has_attributes
    merchant = Merchant.new({:id => 5, :name => "Turing School", :created_at => "12/12/19", :updated_at => "1/1/20"})
    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end
end
