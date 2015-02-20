# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Staffer.create(email: "", password: "", name: "")
# Bills.create(name: "", description: , staffer_id: )
# Voter.create(name: "", email: "", password: "")
# Vote.create(yes_or_no: , voter_id: , bill_id: )

Staffer.create(email: "ygh@usa.gov", password: "staffer", name: "Yancy Hill")
Staffer.create(email: "lvm@usa.gov", password: "staffer", name: "Lonnie V Mancy")
Staffer.create(email: "hhh@usa.gov", password: "staffer", name: "Hunter Helmsly")

Bill.create(name: "Bill 8343-602", description: "This bill will grant every American the right to free internet" , staffer_id: 1)
Bill.create(name: "Bill 1314-503", description: "AKA the Gopher Bill, this will make the national animal a gopher" , staffer_id: 2)
Bill.create(name: "Bill A342-279", description: "Makes all trash collection paid by fed. gov" , staffer_id: 3)

Voter.create(name: "Margret Lee", email: "lee@duke.edu", password: "voter")
Voter.create(name: "Donny Jupiter", email: "dj@unc.edu", password: "voter")
Voter.create(name: "Ron Hermi", email: "ronnie@ron.com", password: "voter")

Vote.create(yes_or_no: true, voter_id: 1, bill_id: 1)
Vote.create(yes_or_no: false, voter_id: 1, bill_id: 2)
Vote.create(yes_or_no: true, voter_id: 1, bill_id: 3)
Vote.create(yes_or_no: true, voter_id: 2, bill_id: 1)
Vote.create(yes_or_no: false, voter_id: 2, bill_id: 2)
Vote.create(yes_or_no: false, voter_id: 2, bill_id: 3)
Vote.create(yes_or_no: true, voter_id: 3, bill_id: 1)
Vote.create(yes_or_no: true, voter_id: 3, bill_id: 2)
Vote.create(yes_or_no: true, voter_id: 3, bill_id: 3)
