require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "bills can exist" do
    Bill.create(name: "Bill 10131", description: "This is a test bill")
  end

  test "bills are unique" do
    Bill.create(name: "Bill 10131", description: "This is a test bill")
    another_bill = Bill.new(name: "Bill 10131", description: "This is a test bill")
    refute another_bill.save
  end

  test "votes percentage" do
    assert_equal 60, bills(:one).percent_yes
  end
  
end
