require 'openssl'

class User < ApplicationRecord
  authenticates_with_sorcery!

  has_one :session_state

  validates :password, length: { minimum: 4 }
  validates :password, confirmation: true
  validates :email, uniqueness: true


end
