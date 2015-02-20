class Bill < ActiveRecord::Base
  belongs_to :staffer

  validates :name, presence: true, uniqueness: true
  
end
