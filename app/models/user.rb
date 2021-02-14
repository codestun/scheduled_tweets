# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual

# frozen_string_literal: true

class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets

  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Must be a valid email address' }
end
