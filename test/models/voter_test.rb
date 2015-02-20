require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "voters are unique" do
    voter = Voter.new(name: "A", email: "a@a.com", password_digest: "password")
    refute voter.save
  end
end
