require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "votes can exist and belong to bill and voter" do
    assert Vote.create(yes_or_no: true, voter_id: 1, bill_id: 1)
  end
end
