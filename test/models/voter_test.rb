require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "voters are unique" do
    voter = Voter.new(name: "Doppel", email: "dopple@dopple.com", password_digest: "password")
    refute voter.save
  end
end
