class Bill < ActiveRecord::Base
  belongs_to :staffer
  has_many :votes

  validates :name, presence: true, uniqueness: true

  def percent_yes
    count = 0.0
    votes.each do |v|
      count += 1 if v.yes_or_no
    end
    (count / votes.length ) * 100
  end
end
