require 'test_helper'

class StafferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "staffers can exist" do
    Staffer.create(name: "Staffy Stafferson", email: "staff@staff.com", password_digest:"password")
  end

  test "staffers are unique" do 
    Staffer.create(name: "Staffy Stafferson", email: "staff@staff.com", password_digest:"password")
    another_staffer = Staffer.new(name: "Staffy Stafferson", email: "staff@staff.com", password_digest:"password")
    refute another_staffer.save
  end

end
