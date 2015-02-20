class Staffer < ActiveRecord::Base
  has_secure_password
  has_many :bills

  validates :email, presence: true, uniqueness: true

end
