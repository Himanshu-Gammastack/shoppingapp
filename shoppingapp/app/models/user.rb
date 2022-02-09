
class User < ApplicationRecord

  has_secure_password
  validates :name, presence: true
  validates :email_id, presence: true
  validates :contact_number, presence: true, length: { is: 10 }

end
